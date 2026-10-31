/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover
import Mathlib

/-!
# A five-cell limerick on a finite labeled language graph

This is an explicit FINITE, edge-labeled graph model of a poetic dialogue.
The formal objects are speaker roles, temporal speech acts, a five-cell
rhyme scheme, normalized lexical pivot stems, and the accepted path.

A source trace's *entire* factor language is not asserted to coincide with
this graph language. In particular this source does not infer soficity of
arbitrary observed text from the existence of one graph path.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

/-- The interlocutors remain friends; this is not a romantic arc. -/
inductive Relationship where
  | friendship | romance
  deriving DecidableEq, Repr

def storyRelationship : Relationship := .friendship

theorem friendship_not_romance : storyRelationship ≠ .romance := by decide

inductive Speaker where
  | narrator | woman | community
  deriving DecidableEq, Repr

/-- Each non-pause edge is a typed narrative act, not a literal string. -/
inductive Beat where
  | introduction | prairie | razorOffer | confidentRefusal | foresight
  | defend | listen | playfulRebuff | forecast | market
  | spring | confirmation | communalChange | naturalFashion | teasePresent
  | pause | restart
  deriving DecidableEq, Repr

/-- Who owns each speech act; a community report is not the woman's voice. -/
def speaker : Beat → Speaker
  | .confidentRefusal | .foresight | .playfulRebuff | .forecast
  | .market | .teasePresent => .woman
  | .communalChange => .community
  | _ => .narrator

@[simp] theorem final_tease_is_hers : speaker .teasePresent = .woman := rfl
@[simp] theorem supportive_offer_is_his : speaker .listen = .narrator := rfl

/-- The quotation's present tense is a typed part of the closing act. -/
inductive Tense where
  | past | present | future
  deriving DecidableEq, Repr

def tense : Beat → Tense
  | .teasePresent => .present
  | .forecast | .foresight => .future
  | .confirmation => .past
  | _ => .present

@[simp] theorem punchline_stays_present : tense .teasePresent = .present := rfl

/-- Textual witnesses are attached to labels; semantic typing is a
manual annotation, not a theorem about natural-language parsing. -/
def surface : Beat → String
  | .introduction => "There is now a woman, once Barry,"
  | .prairie => "Whose legs run as wild as a prairie."
  | .razorOffer => "I offered a shave;"
  | .confidentRefusal => "She said, ‘Darling, behave—’"
  | .foresight => "Come spring, it's the razor that's scary."
  | .defend => "If they mock you, I'll give them all hell,"
  | .listen => "And if things go wrong, I'll listen as well."
  | .playfulRebuff => "She said, ‘Spare your breath, friend—’"
  | .forecast => "It's their fashion that'll end."
  | .market => "Just watch what the shopkeepers sell."
  | .spring => "By spring, her prediction came true;"
  | .confirmation => "The fashion pages changed their view."
  | .communalChange => "From their legs to down there,"
  | .naturalFashion => "Au naturel was the flair."
  | .teasePresent => "She teased, ‘I'm growing on you ... who knew?’"
  | .pause => ""
  | .restart => ""

/-- A stanza is a five-cell object, with an AABBA rhyme assignment. -/
abbrev Stanza := Fin 3
abbrev Cell := Fin 5

inductive Rhyme where
  | a | b
  deriving DecidableEq, Repr

def rhyme (cell : Cell) : Rhyme :=
  if cell.val = 0 ∨ cell.val = 1 ∨ cell.val = 4 then .a else .b

theorem aabba :
    rhyme 0 = .a ∧ rhyme 1 = .a ∧ rhyme 2 = .b ∧
    rhyme 3 = .b ∧ rhyme 4 = .a := by decide

/-- Cells of three stanzas embed in a fifteen-position sequence. -/
def position (stanza : Stanza) (cell : Cell) : Fin 15 :=
  ⟨stanza.val * 5 + cell.val, by omega⟩

/-- Surface spellings are normalized BEFORE checking repeated pivots. -/
inductive Form where
  | hair | hairy | razor | prairie | growing
  deriving DecidableEq, Repr

inductive Stem where
  | growth | blade | landscape | care | listening | future
  | forecast | commerce | confirmation | nature
  deriving DecidableEq, Fintype, Repr

def normalize : Form → Stem
  | .hair | .hairy | .growing => .growth
  | .razor => .blade
  | .prairie => .landscape

theorem hair_hairy_share_pivot :
    normalize .hair = normalize .hairy := rfl

/-- A local cell width of five lines: repeated pivots must be separated by
at least five positions. The same motif MAY return at the distant ending. -/
def SeparatedPivots (pivots : Fin 15 → Option Stem) : Prop :=
  ∀ i j : Fin 15, i ≠ j → ∀ root : Stem,
    pivots i = some root → pivots j = some root →
      i.val + 5 ≤ j.val ∨ j.val + 5 ≤ i.val

/-- Sparse pivots, independent of the rhyme vowel classes. -/
def poemPivots (i : Fin 15) : Option Stem :=
  match i.val with
  | 1 => some .growth
  | 2 => some .blade
  | 4 => some .future
  | 5 => some .care
  | 6 => some .listening
  | 8 => some .forecast
  | 9 => some .commerce
  | 11 => some .confirmation
  | 12 => some .nature
  | 14 => some .growth
  | _ => none

/-- The distant reprise of growth is permitted without a local echo. -/
theorem growth_returns_at_final_tease :
    poemPivots 1 = some .growth ∧
    poemPivots 14 = some .growth ∧ 1 + 5 ≤ (14 : ℕ) := by decide

/-- No stem is reused within a five-line window in the chosen pivot map. -/
theorem poem_has_no_nearby_pivot_collision :
    SeparatedPivots poemPivots := by decide

/-- A deliberately defective edit puts hair/hairy in adjacent pivot cells. -/
def collidingPivots (i : Fin 15) : Option Stem :=
  if i.val = 0 then some (normalize .hair)
  else if i.val = 1 then some (normalize .hairy)
  else none

theorem adjacent_hair_hairy_rejected :
    ¬ SeparatedPivots collidingPivots := by
  intro h
  have hbad := h (0 : Fin 15) (1 : Fin 15)
    (by decide) .growth (by decide) (by decide)
  omega

/-- Sixteen finite states, including the start and terminal states. -/
abbrev Vertex := Fin 16

/-- The next state is forced by the speech act. Pauses are allowed only at
particular rhetorical boundaries, including before the final tease. -/
def transition (s : Vertex) (b : Beat) : Option Vertex :=
  match s.val, b with
  | 0, .introduction => some 1
  | 1, .prairie => some 2
  | 2, .razorOffer => some 3
  | 3, .confidentRefusal => some 4
  | 4, .foresight => some 5
  | 5, .defend => some 6
  | 6, .listen => some 7
  | 7, .playfulRebuff => some 8
  | 8, .forecast => some 9
  | 9, .market => some 10
  | 10, .spring => some 11
  | 11, .confirmation => some 12
  | 12, .communalChange => some 13
  | 13, .naturalFashion => some 14
  | 14, .teasePresent => some 15
  | 9, .pause => some 9
  | 14, .pause => some 14
  | 15, .restart => some 0
  | _, _ => none

/-- A genuinely labeled graph: edges are source/label/target triples. -/
def graph : LabeledGraph Vertex Beat where
  edge s b t := transition s b = some t

/-- The anchored poem language, narrower than the graph's all-starts
finite-path language. -/
def Accepted (word : List Beat) : Prop :=
  WordPath graph (0 : Vertex) word (15 : Vertex)

/-- The fourteen-line prefix ends immediately before the final joke. -/
def prefix : List Beat :=
  [.introduction, .prairie, .razorOffer, .confidentRefusal, .foresight,
   .defend, .listen, .playfulRebuff, .forecast, .market,
   .spring, .confirmation, .communalChange, .naturalFashion]

private theorem follow {s t u : Vertex} {a : Beat} {word : List Beat}
    (head : transition s a = some t)
    (tail : WordPath graph t word u) :
    WordPath graph s (a :: word) u :=
  WordPath.cons a word head tail

/-- An actual witnessed fourteen-edge path, not just a claim of admission. -/
theorem prefix_path : WordPath graph 0 prefix 14 := by
  unfold prefix
  refine follow (s := 0) (t := 1) (a := .introduction) (by decide) ?_
  refine follow (s := 1) (t := 2) (a := .prairie) (by decide) ?_
  refine follow (s := 2) (t := 3) (a := .razorOffer) (by decide) ?_
  refine follow (s := 3) (t := 4) (a := .confidentRefusal) (by decide) ?_
  refine follow (s := 4) (t := 5) (a := .foresight) (by decide) ?_
  refine follow (s := 5) (t := 6) (a := .defend) (by decide) ?_
  refine follow (s := 6) (t := 7) (a := .listen) (by decide) ?_
  refine follow (s := 7) (t := 8) (a := .playfulRebuff) (by decide) ?_
  refine follow (s := 8) (t := 9) (a := .forecast) (by decide) ?_
  refine follow (s := 9) (t := 10) (a := .market) (by decide) ?_
  refine follow (s := 10) (t := 11) (a := .spring) (by decide) ?_
  refine follow (s := 11) (t := 12) (a := .confirmation) (by decide) ?_
  refine follow (s := 12) (t := 13) (a := .communalChange) (by decide) ?_
  refine follow (s := 13) (t := 14) (a := .naturalFashion) (by decide) ?_
  exact WordPath.nil 14

/-- The minimal closing edge. -/
theorem closing_path : WordPath graph 14 [.teasePresent] 15 := by
  refine follow (s := 14) (t := 15) (a := .teasePresent) (by decide) ?_
  exact WordPath.nil 15

/-- An optional beat gives a formally distinct performance of the same joke. -/
theorem paused_closing_path :
    WordPath graph 14 [.pause, .teasePresent] 15 := by
  refine follow (s := 14) (t := 14) (a := .pause) (by decide) ?_
  exact closing_path

/-- The ordinary performance is accepted. -/
theorem canonical_accepted : Accepted (prefix ++ [.teasePresent]) :=
  wordPath_append prefix_path closing_path

/-- The teased punchline can be delayed without disrupting acceptance. -/
theorem paused_accepted : Accepted (prefix ++ [.pause, .teasePresent]) :=
  wordPath_append prefix_path paused_closing_path

/-- The restart is an inter-performance separator, not a spoken line. -/
theorem restart_path : WordPath graph 15 [.restart] 0 := by
  refine follow (s := 15) (t := 0) (a := .restart) (by decide) ?_
  exact WordPath.nil 0

/-- Repeated performances form a genuine labeled cycle. -/
theorem complete_cycle :
    WordPath graph 0 ((prefix ++ [.teasePresent]) ++ [.restart]) 0 :=
  wordPath_append (wordPath_append prefix_path closing_path) restart_path

/-- Confirmation cannot appear before the introduction in an anchored path. -/
theorem no_premature_confirmation (target : Vertex) :
    ¬ WordPath graph 0 [.confirmation] target := by
  intro h
  cases h with
  | cons _ _ head _ =>
      simp [graph, transition] at head

/-- The graph's OWN complete finite-path language has an exact finite
presentation. This does not identify it with an external text trace. -/
theorem graph_language_is_sofic :
    IsSoficFactorLanguage (GraphLanguage graph) := by
  refine ⟨{ State := Vertex
            finiteState := inferInstance
            graph := graph
            exactLanguage := ?_ }⟩
  intro word
  rfl

/-- The language's vertex carrier is actually finite. -/
theorem finite_vertex_space : Finite Vertex := inferInstance

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
