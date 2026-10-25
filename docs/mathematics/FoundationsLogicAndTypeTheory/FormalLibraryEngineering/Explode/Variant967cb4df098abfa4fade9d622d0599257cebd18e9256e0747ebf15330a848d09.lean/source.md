# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Explode.Variant967cb4df098abfa4fade9d622d0599257cebd18e9256e0747ebf15330a848d09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e614db963fabca706d544e585b6a06041c30705b` · SHA-256 `0cf9c050e1fb284d6ee6dac76cbbaa6ceeaa1d5133dec2db5e257124a88ad791`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lambda.Variant76bec91b46ca81355337fbb4332753df4d082dbb4a198b7ddb9bd24d0d39664e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76bec91b46ca81355337fbb4332753df4d082dbb4a198b7ddb9bd24d0d39664e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lambda.Variant76bec91b46ca81355337fbb4332753df4d082dbb4a198b7ddb9bd24d0d39664e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"76bec91b46ca81355337fbb4332753df4d082dbb4a198b7ddb9bd24d0d39664e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/Explode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Explode
import Mathlib.Data.Real.Basic

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lambda.Variant76bec91b46ca81355337fbb4332753df4d082dbb4a198b7ddb9bd24d0d39664e

set_option linter.unusedVariables false
open Lean

/--
info: true_iff : ∀ (p : Prop), (True ↔ p) = p

0 │    │ p         ├ Prop
1 │    │ x✝        │ ┌ True ↔ p
2 │    │ trivial   │ │ True
3 │1,2 │ Iff.mp    │ │ p
4 │1,3 │ ∀I        │ (True ↔ p) → p
5 │    │ h         │ ┌ p
6 │    │ x✝        │ │ ┌ True
7 │6,5 │ ∀I        │ │ True → p
8 │    │ x✝        │ │ ┌ p
9 │8,2 │ ∀I        │ │ p → True
10│7,9 │ Iff.intro │ │ True ↔ p
11│5,10│ ∀I        │ p → (True ↔ p)
12│4,11│ Iff.intro │ (True ↔ p) ↔ p
13│12  │ propext   │ (True ↔ p) = p
14│0,13│ ∀I        │ ∀ (p : Prop), (True ↔ p) = p
-/
#guard_msgs in #explode true_iff

-- On command line, tests format functions with => rather than ↦ without this.
set_option pp.unicode.fun true

theorem lambda : True → True :=
  λ a => a

/--
info: lambda : True → True

0│   │ a  ├ True
1│0,0│ ∀I │ True → True
-/
#guard_msgs in #explode lambda

theorem application : True ∧ True :=
  And.intro True.intro True.intro

/--
info: application : True ∧ True

0│   │ True.intro │ True
1│0,0│ And.intro  │ True ∧ True
-/
#guard_msgs in #explode application

theorem theorem_1 : ∀ (p : Prop), p → p :=
  λ (p : Prop) => (λ hP : p => hP)
/--
info: theorem_1 : ∀ (p : Prop), p → p

0│     │ p  ├ Prop
1│     │ hP ├ p
2│0,1,1│ ∀I │ ∀ (p : Prop), p → p
-/
#guard_msgs in #explode theorem_1

theorem theorem_2 : ∀ (p : Prop) (q : Prop), p → q → p ∧ q :=
  λ p => λ q => λ hP => λ hQ => And.intro hP hQ

/--
info: theorem_2 : ∀ (p q : Prop), p → q → p ∧ q

0│         │ p         ├ Prop
1│         │ q         ├ Prop
2│         │ hP        ├ p
3│         │ hQ        ├ q
4│2,3      │ And.intro │ p ∧ q
5│0,1,2,3,4│ ∀I        │ ∀ (p q : Prop), p → q → p ∧ q
-/
#guard_msgs in #explode theorem_2

theorem theorem_3 (a : Prop) (h : a) : a ↔ True :=
  Iff.intro
    (λ hl => trivial)
    (λ hr => h)

/--
info: theorem_3 : ∀ (a : Prop), a → (a ↔ True)

0│     │ a         ├ Prop
1│     │ h         ├ a
2│     │ hl        │ ┌ a
3│     │ trivial   │ │ True
4│2,3  │ ∀I        │ a → True
5│     │ hr        │ ┌ True
6│5,1  │ ∀I        │ True → a
7│4,6  │ Iff.intro │ a ↔ True
8│0,1,7│ ∀I        │ ∀ (a : Prop), a → (a ↔ True)
-/
#guard_msgs in #explode theorem_3


theorem theorem_4 : ∀ p q : Prop, (p → q) → (¬q → ¬p) :=
  λ U => λ W => λ hPQ => λ hNQ => λ hP => False.elim (hNQ (hPQ hP))

/--
info: theorem_4 : ∀ (p q : Prop), (p → q) → ¬q → ¬p

0│           │ U          ├ Prop
1│           │ W          ├ Prop
2│           │ hPQ        ├ U → W
3│           │ hNQ        ├ ¬W
4│           │ hP         ├ U
5│2,4        │ ∀E         │ W
6│3,5        │ ∀E         │ False
7│6          │ False.elim │ False
8│0,1,2,3,4,7│ ∀I         │ ∀ (U W : Prop), (U → W) → ¬W → U → False
-/
#guard_msgs in #explode theorem_4

lemma lemma_5 : ∀ p q : Prop, (¬q → ¬p) → (p → q) :=
  λ p => λ q =>
  λ hNQNP =>
  λ hP =>
    Or.elim (Classical.em q)
    (λ hQ => hQ)
    (λ hNQ =>
      let hNP := hNQNP hNQ
      False.elim (hNP hP))

/--
info: lemma_5 : ∀ (p q : Prop), (¬q → ¬p) → p → q

0 │          │ p            ├ Prop
1 │          │ q            ├ Prop
2 │          │ hNQNP        ├ ¬q → ¬p
3 │          │ hP           ├ p
4 │          │ Classical.em │ q ∨ ¬q
5 │          │ hQ           │ ┌ q
6 │5,5       │ ∀I           │ q → q
7 │          │ hNQ          │ ┌ ¬q
8 │2,7       │ ∀E           │ │ ¬p
10│8,3       │ ∀E           │ │ False
11│10        │ False.elim   │ │ q
12│7,11      │ ∀I           │ ¬q → q
13│4,6,12    │ Or.elim      │ q
14│0,1,2,3,13│ ∀I           │ ∀ (p q : Prop), (¬q → ¬p) → p → q
-/
#guard_msgs in #explode lemma_5


lemma lemma_6 : ∀ p q : Prop, (p → q) → p → q :=
  λ p h hpq hp => hpq hp

/--
info: lemma_6 : ∀ (p q : Prop), (p → q) → p → q

0│         │ p   ├ Prop
1│         │ h   ├ Prop
2│         │ hpq ├ p → h
3│         │ hp  ├ p
4│2,3      │ ∀E  │ h
5│0,1,2,3,4│ ∀I  │ ∀ (p h : Prop), (p → h) → p → h
-/
#guard_msgs in #explode lemma_6

lemma lemma_7 : ∀ p q r : Prop, (p → q) → (p → q → r) → (p → r) :=
  λ p q r hq hqr hp =>
    let hq' := hq hp
    let hqr' := hqr hp
    hqr' hq'

/--
info: lemma_7 : ∀ (p q r : Prop), (p → q) → (p → q → r) → p → r

0 │              │ p   ├ Prop
1 │              │ q   ├ Prop
2 │              │ r   ├ Prop
3 │              │ hq  ├ p → q
4 │              │ hqr ├ p → q → r
5 │              │ hp  ├ p
6 │3,5           │ ∀E  │ q
8 │4,5           │ ∀E  │ q → r
10│8,6           │ ∀E  │ r
11│0,1,2,3,4,5,10│ ∀I  │ ∀ (p q r : Prop), (p → q) → (p → q → r) → p → r
-/
#guard_msgs in #explode lemma_7

lemma lemma_5' : ∀ p q : Prop, (¬q → ¬p) → (p → q) :=
  λ p => λ q =>
  λ hNQNP =>
    Or.elim (Classical.em q)
    (λ hQ hP => hQ)
    (λ hNQ hP =>
      let hNP := hNQNP hNQ
      False.elim (hNP hP))

/--
info: lemma_5' : ∀ (p q : Prop), (¬q → ¬p) → p → q

0 │        │ p            ├ Prop
1 │        │ q            ├ Prop
2 │        │ hNQNP        ├ ¬q → ¬p
3 │        │ Classical.em │ q ∨ ¬q
4 │        │ hQ           │ ┌ q
5 │        │ hP           │ ├ p
6 │4,5,4   │ ∀I           │ q → p → q
7 │        │ hNQ          │ ┌ ¬q
8 │        │ hP           │ ├ p
9 │2,7     │ ∀E           │ │ ¬p
11│9,8     │ ∀E           │ │ False
12│11      │ False.elim   │ │ q
13│7,8,12  │ ∀I           │ ¬q → p → q
14│3,6,13  │ Or.elim      │ p → q
15│0,1,2,14│ ∀I           │ ∀ (p q : Prop), (¬q → ¬p) → p → q
-/
#guard_msgs in #explode lemma_5'

section
variable (p q : Prop)

/--
info: fun hp hnp ↦ hnp hp : p → (p → q) → q

0│     │ hp  ├ p
1│     │ hnp ├ p → q
2│1,0  │ ∀E  │ q
3│0,1,2│ ∀I  │ p → (p → q) → q
-/
#guard_msgs in #explode fun (hp : p) (hnp : p → q) => hnp hp

/--
info: fun hNQNP ↦
  Or.elim (Classical.em q) (fun hQ hP ↦ hQ) fun hNQ hP ↦
    let hNP := hNQNP hNQ;
    False.elim (hNP hP) : (¬q → ¬p) → p → q

0 │      │ hNQNP        ├ ¬q → ¬p
1 │      │ Classical.em │ q ∨ ¬q
2 │      │ hQ           │ ┌ q
3 │      │ hP           │ ├ p
4 │2,3,2 │ ∀I           │ q → p → q
5 │      │ hNQ          │ ┌ ¬q
6 │      │ hP           │ ├ p
7 │0,5   │ ∀E           │ │ ¬p
9 │7,6   │ ∀E           │ │ False
10│9     │ False.elim   │ │ q
11│5,6,10│ ∀I           │ ¬q → p → q
12│1,4,11│ Or.elim      │ p → q
13│0,12  │ ∀I           │ (¬q → ¬p) → p → q
-/
#guard_msgs in #explode fun (hNQNP : ¬q → ¬p) =>
  Or.elim (Classical.em q)
    (λ hQ hP => hQ)
    (λ hNQ hP =>
      let hNP := hNQNP hNQ
      False.elim (hNP hP))

end
```
