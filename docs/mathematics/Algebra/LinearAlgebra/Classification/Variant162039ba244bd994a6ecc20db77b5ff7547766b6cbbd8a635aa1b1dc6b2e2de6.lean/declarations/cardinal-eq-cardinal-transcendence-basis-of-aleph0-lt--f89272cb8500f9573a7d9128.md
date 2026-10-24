# cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a4e7f2d-c4ae-1e99-e734-e325bd359579",
  "kind": "theorem",
  "lexical_name": "cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt'",
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
  "slug": "cardinal-eq-cardinal-transcendence-basis-of-aleph0-lt--f89272cb8500f9573a7d9128",
  "source": {
    "blob": "270728153a7c2fec8da030f5dfd954dacecba74c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 153,
    "path": "GRWTSK/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f89272cb8500f9573a7d912891489ae3e7ba5543159a58e849c1cc29e406b837",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a4e7f2d-c4ae-1e99-e734-e325bd359579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt' [Nontrivial R]
    (hv : IsTranscendenceBasis R v') (hR : #R ≤ ℵ₀) (hK : ℵ₀ < #K') : #K' = #ι' := by
  simpa using cardinal_eq_cardinal_transcendence_basis_of_aleph0_lt v' hv hR hK

end Cardinal

variable {K : Type u} {L : Type v} [Field K] [Field L] [IsAlgClosed K] [IsAlgClosed L]

/-- Two uncountable algebraically closed fields of characteristic zero are isomorphic
if they have the same cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Classification/Variant162039ba244bd994a6ecc20db77b5ff7547766b6cbbd8a635aa1b1dc6b2e2de6.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `270728153a7c2fec8da030f5dfd954dacecba74c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
