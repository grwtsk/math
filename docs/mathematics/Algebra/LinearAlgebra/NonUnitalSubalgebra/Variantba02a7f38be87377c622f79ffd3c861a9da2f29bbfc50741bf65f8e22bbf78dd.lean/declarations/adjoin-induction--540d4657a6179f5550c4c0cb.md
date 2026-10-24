# adjoin_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ea6aa8e-62d6-e863-9db2-6e7ca65872d2",
  "kind": "theorem",
  "lexical_name": "adjoin_induction",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "adjoin-induction--540d4657a6179f5550c4c0cb",
  "source": {
    "blob": "585a20fc26ff9044fc77b4cde4884c4960695af3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 630,
    "path": "GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variantba02a7f38be87377c622f79ffd3c861a9da2f29bbfc50741bf65f8e22bbf78dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:540d4657a6179f5550c4c0cb59d3fb6e133d9a036b14dedcbbac4cd40d2ffcdd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variantba02a7f38be87377c622f79ffd3c861a9da2f29bbfc50741bf65f8e22bbf78dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ea6aa8e-62d6-e863-9db2-6e7ca65872d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_induction {s : Set A} {p : (x : A) → x ∈ adjoin R s → Prop}
    (mem : ∀ (x) (hx : x ∈ s), p x (subset_adjoin R hx))
    (add : ∀ x y hx hy, p x hx → p y hy → p (x + y) (add_mem hx hy)) (zero : p 0 (zero_mem _))
    (mul : ∀ x y hx hy, p x hx → p y hy → p (x * y) (mul_mem hx hy))
    (smul : ∀ r x hx, p x hx → p (r • x) (SMulMemClass.smul_mem r hx))
    {x} (hx : x ∈ adjoin R s) : p x hx :=
  let S : NonUnitalSubalgebra R A :=
    { carrier := { x | ∃ hx, p x hx }
      mul_mem' := (Exists.elim · fun _ ha ↦ (Exists.elim · fun _ hb ↦ ⟨_, mul _ _ _ _ ha hb⟩))
      add_mem' := (Exists.elim · fun _ ha ↦ (Exists.elim · fun _ hb ↦ ⟨_, add _ _ _ _ ha hb⟩))
      smul_mem' := fun r ↦ (Exists.elim · fun _ hb ↦ ⟨_, smul r _ _ hb⟩)
      zero_mem' := ⟨_, zero⟩ }
  adjoin_le (S := S) (fun y hy ↦ ⟨subset_adjoin R hy, mem y hy⟩) hx |>.elim fun _ ↦ id

@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variantba02a7f38be87377c622f79ffd3c861a9da2f29bbfc50741bf65f8e22bbf78dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variantba02a7f38be87377c622f79ffd3c861a9da2f29bbfc50741bf65f8e22bbf78dd.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585a20fc26ff9044fc77b4cde4884c4960695af3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
