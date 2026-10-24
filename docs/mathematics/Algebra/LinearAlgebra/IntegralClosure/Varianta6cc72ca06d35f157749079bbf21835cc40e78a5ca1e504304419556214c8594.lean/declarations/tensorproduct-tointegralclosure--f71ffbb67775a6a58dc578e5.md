# TensorProduct.toIntegralClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:771efab70fe8010de37ae2f5958f2e69fc82c7a2b11257ef5b9888c04384514d",
  "kind": "def",
  "lexical_name": "TensorProduct.toIntegralClosure",
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
  "slug": "tensorproduct-tointegralclosure--f71ffbb67775a6a58dc578e5",
  "source": {
    "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f71ffbb67775a6a58dc578e5a3cb9d7b4c1b0e51cded3c0058f0696981527ee3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:771efab70fe8010de37ae2f5958f2e69fc82c7a2b11257ef5b9888c04384514d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TensorProduct.toIntegralClosure
    (B : Type*) [CommRing B] [Algebra R B] :
    S ⊗[R] integralClosure R B →ₐ[S] integralClosure S (S ⊗[R] B) :=
    (Algebra.TensorProduct.map (.id _ _) (integralClosure R B).val).codRestrict _ fun x ↦ by
  induction x with
  | add x y _ _ => rw [map_add]; exact add_mem ‹_› ‹_›
  | tmul x y =>
    convert!
      ((y.2.map (Algebra.TensorProduct.includeRight (R := R) (A := S))).tower_top (A := S)).smul x
    simp [smul_tmul']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd8d39ed9f66f9b65488cf19af6038db4921b03c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
