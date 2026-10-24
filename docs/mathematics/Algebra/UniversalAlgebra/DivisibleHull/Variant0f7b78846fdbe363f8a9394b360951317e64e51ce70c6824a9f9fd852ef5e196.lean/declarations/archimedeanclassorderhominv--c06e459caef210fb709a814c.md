# archimedeanClassOrderHomInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9760633b71816411cf59566cd88a3eb667503888a3629731bd11e22c1de4aab",
  "kind": "def",
  "lexical_name": "archimedeanClassOrderHomInv",
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
  "slug": "archimedeanclassorderhominv--c06e459caef210fb709a814c",
  "source": {
    "blob": "4d86e6421f71b249a7c27edbd96d5743725a64b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 392,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c06e459caef210fb709a814caa6c3b73625c0f660b997e51f1db18f7508c0d93",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9760633b71816411cf59566cd88a3eb667503888a3629731bd11e22c1de4aab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def archimedeanClassOrderHomInv : ArchimedeanClass (DivisibleHull M) →o ArchimedeanClass M :=
  ArchimedeanClass.liftOrderHom (fun x ↦ x.liftOn (fun m s ↦ ArchimedeanClass.mk m)
    (fun _ _ _ _ h ↦ by
      apply aux_archimedeanClassOrderHom_injective
      apply_fun ArchimedeanClass.mk at h
      simpa [aux_archimedeanClassMk_mk] using h))
    (fun a b h ↦ by
      induction a with | mk _ _
      induction b with | mk _ _
      simp_rw [aux_archimedeanClassMk_mk] at h
      simpa using ((archimedeanClassOrderHom M).monotone.strictMono_of_injective
        aux_archimedeanClassOrderHom_injective).le_iff_le.mp h)

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
variable (M) in
/-- The Archimedean classes of `DivisibleHull M` are the same as those of `M`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variant0f7b78846fdbe363f8a9394b360951317e64e51ce70c6824a9f9fd852ef5e196.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d86e6421f71b249a7c27edbd96d5743725a64b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
