# lift_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33d0a87f-16f1-39be-e6a4-fea139895e37",
  "kind": "theorem",
  "lexical_name": "lift_unique",
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
  "slug": "lift-unique--d587b24d3d188e878519afb0",
  "source": {
    "blob": "88efedb9b4901f59f0f9c92ada8ba576659144ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 93,
    "path": "GRWTSK/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d587b24d3d188e878519afb07a1b284d4204170a46153cd15fc5455c5e664847",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33d0a87f-16f1-39be-e6a4-fea139895e37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_unique (F : AlgHom k (SkewMonoidAlgebra k G) A)
    (f : SkewMonoidAlgebra k G) : F f = f.coeff.sum fun a b ↦ b • F (single a 1) := by
  conv_lhs =>
    rw [lift_unique' F]
    simp [lift_apply]

/-- If `f : G → H` is a multiplicative homomorphism between two monoids, then
`mapDomain f` is an algebra homomorphism between their monoid algebras. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lift/Varianta650064b3f7772af31010de68eb0806d4cd11561761a45fff18b1bd4e441ea82.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88efedb9b4901f59f0f9c92ada8ba576659144ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
