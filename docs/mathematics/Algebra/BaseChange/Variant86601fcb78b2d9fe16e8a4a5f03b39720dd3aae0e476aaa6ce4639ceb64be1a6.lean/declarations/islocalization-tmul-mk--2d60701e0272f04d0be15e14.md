# IsLocalization.tmul_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a40abc89-331d-18bc-9a3c-50d71b30957f",
  "kind": "lemma",
  "lexical_name": "IsLocalization.tmul_mk'",
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
  "slug": "islocalization-tmul-mk--2d60701e0272f04d0be15e14",
  "source": {
    "blob": "0c7dee33cb587aa0ee020b89e761413f1d2fbd99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 226,
    "path": "GRWTSK/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d60701e0272f04d0be15e1403123971f4c550396c2662e4842bbaa705dce931",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a40abc89-331d-18bc-9a3c-50d71b30957f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalization.tmul_mk' (M : Submonoid R) [IsLocalization M A] (s : S) (x : R) (y : M) :
    s ⊗ₜ IsLocalization.mk' A x y =
      IsLocalization.mk' (S ⊗[R] A) (algebraMap R S x * s)
        ⟨algebraMap R S y.1, Algebra.mem_algebraMapSubmonoid_of_mem _⟩ := by
  rw [IsLocalization.eq_mk'_iff_mul_eq, algebraMap_apply, Algebra.id.map_eq_id,
    RingHomCompTriple.comp_apply, tmul_one_eq_one_tmul, tmul_mul_tmul, mul_one, mul_comm,
    IsLocalization.mk'_spec', algebraMap_apply, Algebra.id.map_eq_id, RingHom.id_apply,
    ← Algebra.smul_def, smul_tmul, Algebra.smul_def, mul_one]

open Algebra.TensorProduct in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variant86601fcb78b2d9fe16e8a4a5f03b39720dd3aae0e476aaa6ce4639ceb64be1a6.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7dee33cb587aa0ee020b89e761413f1d2fbd99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
