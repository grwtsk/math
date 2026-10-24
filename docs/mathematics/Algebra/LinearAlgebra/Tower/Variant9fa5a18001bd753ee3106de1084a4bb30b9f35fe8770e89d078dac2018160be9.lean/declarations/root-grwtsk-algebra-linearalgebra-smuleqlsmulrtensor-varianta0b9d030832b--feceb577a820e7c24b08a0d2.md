# _root_.GRWTSK.Algebra.LinearAlgebra.SmulEqLsmulRTensor.Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.LinearEquiv.baseChange_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeba2600-46af-75fe-b5bb-c69400f86cab",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.SmulEqLsmulRTensor.Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.LinearEquiv.baseChange_mul",
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
  "slug": "root-grwtsk-algebra-linearalgebra-smuleqlsmulrtensor-varianta0b9d030832b--feceb577a820e7c24b08a0d2",
  "source": {
    "blob": "673fe72784c3de8d32f0d53ad3a81ab369440e55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 765,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feceb577a820e7c24b08a0d24bc2a1102ba8cf411b3f846b2ca54cb9c4ea73c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeba2600-46af-75fe-b5bb-c69400f86cab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.SmulEqLsmulRTensor.Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.LinearEquiv.baseChange_mul (e : M ≃ₗ[R] M) (f : M ≃ₗ[R] M) :
    (e * f).baseChange R A M M = (e.baseChange R A M M) * (f.baseChange R A M M) := by
  simp [LinearEquiv.mul_eq_trans, LinearEquiv.baseChange_trans]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673fe72784c3de8d32f0d53ad3a81ab369440e55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
