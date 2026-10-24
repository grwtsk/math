# _root_.GRWTSK.Algebra.LinearAlgebra.EquivOfPiLEquivPi.Variant53f430b28c7c5b1dd09711ffae37ac8455eb4ea053bf4713da7c8141ad61cc47.LinearMap.det_dualMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48e492e2-1614-a257-169c-72583bde0137",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.EquivOfPiLEquivPi.Variant53f430b28c7c5b1dd09711ffae37ac8455eb4ea053bf4713da7c8141ad61cc47.LinearMap.det_dualMap",
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
  "slug": "root-grwtsk-algebra-linearalgebra-equivofpilequivpi-variant53f430b28c7c5--7d8b9a313baa40825b13e03a",
  "source": {
    "blob": "bde0d8d20049d5430c82ee956791b15a71bb3fe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 815,
    "line": 798,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant05f6373f03bc9dc3db07ffc0f3594cae24b2ec4545d66c69d8cf704a7ebdd796.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d8b9a313baa40825b13e03a12fa065efd94295ffdcfff20b0c9f433b0409490",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant05f6373f03bc9dc3db07ffc0f3594cae24b2ec4545d66c69d8cf704a7ebdd796.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e492e2-1614-a257-169c-72583bde0137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–815.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.EquivOfPiLEquivPi.Variant53f430b28c7c5b1dd09711ffae37ac8455eb4ea053bf4713da7c8141ad61cc47.LinearMap.det_dualMap
    [Module.Free R M] [Module.Finite R M] (f : M →ₗ[R] M) :
    f.dualMap.det = f.det := by
  set b := Module.Free.chooseBasis R M
  have : Fintype (Module.Free.ChooseBasisIndex R M) :=
    Module.Free.ChooseBasisIndex.fintype R M
  rw [← LinearMap.det_toMatrix b, ← LinearMap.det_toMatrix b.dualBasis]
  simp [LinearMap.dualMap_def, LinearMap.toMatrix_transpose]

end Dual

section

variable {R V : Type*} [CommRing R] [AddCommGroup V]
    [Module R V] [Module.Finite R V]
    (W : Submodule R V) [Module.Free R W] [Module.Finite R W] [Module.Free R (V ⧸ W)]

open Module.Basis in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant05f6373f03bc9dc3db07ffc0f3594cae24b2ec4545d66c69d8cf704a7ebdd796.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant05f6373f03bc9dc3db07ffc0f3594cae24b2ec4545d66c69d8cf704a7ebdd796.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bde0d8d20049d5430c82ee956791b15a71bb3fe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
