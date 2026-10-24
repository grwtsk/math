# algebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:507499cde83da40239688ef4d1b78bdfb45cb63bcbd07a916e28fee7f59f0adc",
  "kind": "instance",
  "lexical_name": "algebra",
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
  "slug": "algebra--304f1f7eb8e800fc46b421f5",
  "source": {
    "blob": "fa50aeb1bd9d06f3baac27589adf30c1791f6c46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 293,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:304f1f7eb8e800fc46b421f548bafb240fc0a3326d9ae2c210d9840f74e62b56",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:507499cde83da40239688ef4d1b78bdfb45cb63bcbd07a916e28fee7f59f0adc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance algebra : Algebra 𝕜 C^n⟮I, N; 𝓘(𝕜, A), A⟯ where
  smul := fun r f => ⟨r • f, contMDiff_const.smul f.contMDiff⟩
  algebraMap := ContMDiffMap.C
  commutes' := fun c f => by ext x; exact Algebra.commutes' _ _
  smul_def' := fun c f => by ext x; exact Algebra.smul_def' _ _

/-- Coercion to a function as an `AlgHom`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variantc549d157c7522fd9d1b4cd3a52376eabb5df7f025d91155e8f8dbf96e719ccf3.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa50aeb1bd9d06f3baac27589adf30c1791f6c46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
