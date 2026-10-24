# _root_.GRWTSK.Algebra.LinearAlgebra.Transvection.Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.LinearEquiv.transvection.det_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56525120-7f0d-d1d6-2e24-850e3608903d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.Transvection.Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.LinearEquiv.transvection.det_eq_one",
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
  "slug": "root-grwtsk-algebra-linearalgebra-transvection-variant4d54098e88c97ab6ca--4f4f2955fcc381e63b83604c",
  "source": {
    "blob": "d5a779f975d1316e5119db2757e37fa45f0ca2d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 682,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant61038e9b154b7906a1c8f2bfeae5a6b986c91b96dd2660072868730d878139c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f4f2955fcc381e63b83604cc90fdf3390a3f1991566ce1d9c9e8ab3bf9e7631",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant61038e9b154b7906a1c8f2bfeae5a6b986c91b96dd2660072868730d878139c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56525120-7f0d-d1d6-2e24-850e3608903d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem _root_.GRWTSK.Algebra.LinearAlgebra.Transvection.Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.LinearEquiv.transvection.det_eq_one
    {f : Dual R V} {v : V} (hfv : f v = 0) :
    (LinearEquiv.transvection hfv).det = 1 := by
  rw [← Units.val_inj, LinearEquiv.coe_det,
    LinearEquiv.transvection.coe_toLinearMap hfv, Units.val_one]
  by_contra! h
  have : Free R V := Free.of_det_ne_one h
  have : Module.Finite R V := finite_of_det_ne_one h
  apply h
  rw [transvection.det, hfv, add_zero]

end transvection

end LinearMap

end determinant

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant61038e9b154b7906a1c8f2bfeae5a6b986c91b96dd2660072868730d878139c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant61038e9b154b7906a1c8f2bfeae5a6b986c91b96dd2660072868730d878139c2.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a779f975d1316e5119db2757e37fa45f0ca2d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
