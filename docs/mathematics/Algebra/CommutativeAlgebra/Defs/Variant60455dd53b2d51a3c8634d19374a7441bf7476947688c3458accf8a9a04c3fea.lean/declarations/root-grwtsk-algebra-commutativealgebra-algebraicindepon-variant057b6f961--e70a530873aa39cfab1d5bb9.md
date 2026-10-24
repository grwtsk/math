# _root_.GRWTSK.Algebra.CommutativeAlgebra.AlgebraicIndepOn.Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.AlgebraicIndepOn.aevalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f7eb211ead633f885c72dd298d7ae04956663a06bffc4b43744ff4297f9c861",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.AlgebraicIndepOn.Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.AlgebraicIndepOn.aevalEquiv",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-algebraicindepon-variant057b6f961--e70a530873aa39cfab1d5bb9",
  "source": {
    "blob": "b028c5fc59156c9c9b41a4e490f04a8be92bfb03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 170,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant60455dd53b2d51a3c8634d19374a7441bf7476947688c3458accf8a9a04c3fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e70a530873aa39cfab1d5bb9254d605a4efb4865474a063666ca4c1c185e6fa3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variant60455dd53b2d51a3c8634d19374a7441bf7476947688c3458accf8a9a04c3fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f7eb211ead633f885c72dd298d7ae04956663a06bffc4b43744ff4297f9c861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.CommutativeAlgebra.AlgebraicIndepOn.Variant057b6f961fd870a3bb4f53f9e5449dd452dcaa80c4d7a66cef1412f54185b4c4.AlgebraicIndepOn.aevalEquiv {s : Set ι} (hx : AlgebraicIndepOn R x s) :
    MvPolynomial s R ≃ₐ[R] Algebra.adjoin R (x '' s) :=
  (AlgebraicIndependent.aevalEquiv hx).trans
    (Subalgebra.equivOfEq _ _ congr(Algebra.adjoin _ $(by aesop)))

end repr

end AlgebraicIndependent

variable (R) in
/-- A family is a transcendence basis if it is a maximal algebraically independent subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variant60455dd53b2d51a3c8634d19374a7441bf7476947688c3458accf8a9a04c3fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant60455dd53b2d51a3c8634d19374a7441bf7476947688c3458accf8a9a04c3fea.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b028c5fc59156c9c9b41a4e490f04a8be92bfb03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
