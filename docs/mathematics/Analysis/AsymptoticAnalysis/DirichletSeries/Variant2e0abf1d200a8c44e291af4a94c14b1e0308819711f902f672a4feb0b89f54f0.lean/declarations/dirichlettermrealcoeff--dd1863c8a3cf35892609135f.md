# dirichletTermRealCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d052ac3cacd22400ab2e26664131d223b1ff51e5175f121c573fc8c059e67aa3",
  "kind": "def",
  "lexical_name": "dirichletTermRealCoeff",
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
  "slug": "dirichlettermrealcoeff--dd1863c8a3cf35892609135f",
  "source": {
    "blob": "5f9f526e6c68edfc3f997ce40594b36f583ab46e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 25,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd1863c8a3cf35892609135fe9bb3b3d4a27cf29c86f81cc02c8ba681fd9905b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d052ac3cacd22400ab2e26664131d223b1ff51e5175f121c573fc8c059e67aa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dirichletTermRealCoeff
    (a : ArithFn Real)
    (σ : Real)
    (n : Nat) : Real :=
  if n = 0 then 0 else a n * posWeightReal σ n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DirichletSeries/Variant2e0abf1d200a8c44e291af4a94c14b1e0308819711f902f672a4feb0b89f54f0.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9f526e6c68edfc3f997ce40594b36f583ab46e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
