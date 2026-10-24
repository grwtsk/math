# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Solution.Variant78f826df3edb1dd56f829c5f0139c27cec879751e342cd05b980ac03fe4fb95a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31c80ccffbfd0eb0d82d224741df2de3f956d5b1` · SHA-256 `8db44f88bd4ad83f2f33b2295430eb220f47d5b1f6cb2726715a2d12d241efb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.False.Variant3974fcfd64870a4eb4ad6b8e9cc8172440d8780367a515a5ab1b9727883b1b4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3974fcfd64870a4eb4ad6b8e9cc8172440d8780367a515a5ab1b9727883b1b4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.False.Variant3974fcfd64870a4eb4ad6b8e9cc8172440d8780367a515a5ab1b9727883b1b4a","mathematical_subject":"Computation.DataStructures","original_sha256":"3974fcfd64870a4eb4ad6b8e9cc8172440d8780367a515a5ab1b9727883b1b4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/char_ofnat_issue/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
prelude

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.False.Variant3974fcfd64870a4eb4ad6b8e9cc8172440d8780367a515a5ab1b9727883b1b4a

set_option genCtorIdx false
set_option linter.all false

unsafe axiom lcErased : Type
unsafe axiom lcAny : Type
unsafe axiom lcVoid : Type

universe u

inductive False : Prop

inductive True' : Prop where
  | intro : True'

inductive Unit'' where
  | intro : Unit''

inductive Nat where
  | zero : Nat
  | succ (n : Nat) : Nat

-- `Char` is a structure whose field is a PROOF OF FALSE, so `Char.n : Char → False`.
-- Char is uninhabited; we never build one.
structure Char : Type where
  mk ::
  n : False

-- `Box` is a structure with an INHABITED field.
structure Box : Type where
  mk ::
  f : True'

inductive List (α : Type u) where
  | nil : List α
  | cons (hd : α) (tl : List α) : List α

structure String where
  ofList ::
  data : List Char

-- THE MISSING CHECK: the kernel never verifies `Char.ofNat : Nat → Char`.
-- We declare it returning `Box` instead.
noncomputable def Char.ofNat (n : Nat) : Box := Box.mk True'.intro

-- motive: `M nil = Unit''`, `M (cons ..) = Char`, so `head` needs no `Char` for the nil case
noncomputable def M (l : List Char) : Type :=
  @List.rec Char (fun _ => Type) Unit'' (fun _ _ _ => Char) l

noncomputable def head (l : List Char) : M l :=
  @List.rec Char M Unit''.intro (fun hd _ _ => hd) l

-- `String.data "\x02"` projects the literal.  reduceProj expands it to
--   String.ofList (List.cons (Char.ofNat 2) List.nil)
-- and returns the list, which `inferProj` types as `List Char`.
-- Its head is really a `Box`, but the kernel types it as `Char`.
noncomputable def confused : Char := head (String.data "\x02")

-- `Char.n` is `proj Char 0`, so it hands back Box's field -- typed as `False`.
theorem boom : False := Char.n confused
```
