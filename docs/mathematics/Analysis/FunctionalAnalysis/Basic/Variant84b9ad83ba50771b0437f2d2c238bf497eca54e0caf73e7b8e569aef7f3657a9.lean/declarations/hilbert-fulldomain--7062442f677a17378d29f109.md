# Hilbert.fullDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c868ea4e5121949050e435735b89a5a0eab41498e91ba6f815c7023846b61b22",
  "kind": "def",
  "lexical_name": "Hilbert.fullDomain",
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
  "slug": "hilbert-fulldomain--7062442f677a17378d29f109",
  "source": {
    "blob": "4fcc3468bf3e52a75da30a9a2e4fd2027fafb688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 42,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant84b9ad83ba50771b0437f2d2c238bf497eca54e0caf73e7b8e569aef7f3657a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7062442f677a17378d29f109f90a600746cd2d1e19823ec1c17529f50dd77152",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant84b9ad83ba50771b0437f2d2c238bf497eca54e0caf73e7b8e569aef7f3657a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c868ea4e5121949050e435735b89a5a0eab41498e91ba6f815c7023846b61b22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hilbert.fullDomain
    (H : Hilbert.Space.{u, v}) :
    Hilbert.DenseDomain H where
  contains := fun _ => True
  zero_mem := trivial
  dense := True
  denseCertified := trivial
  boundary := [
    "Full-domain interface example.",
    "For unbounded analytic operators, a genuine dense-domain certificate is required."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant84b9ad83ba50771b0437f2d2c238bf497eca54e0caf73e7b8e569aef7f3657a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant84b9ad83ba50771b0437f2d2c238bf497eca54e0caf73e7b8e569aef7f3657a9.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fcc3468bf3e52a75da30a9a2e4fd2027fafb688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
