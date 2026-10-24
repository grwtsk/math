# HasEigenvector.apply_eq_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c16fc9b-7429-7193-ac7b-a188646d5cc6",
  "kind": "theorem",
  "lexical_name": "HasEigenvector.apply_eq_smul",
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
  "slug": "haseigenvector-apply-eq-smul--7efb9c26f6dc00c6893ace4b",
  "source": {
    "blob": "345fd14c60c8088ebd04ed9ff642e3efc85f1d4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 437,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4876bb1dac44f1a168b390abaa4f7b3a3c75cde591f13cb3b24f086e77d553ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7efb9c26f6dc00c6893ace4bc3cbbabf8d6c8284c46337da6295e91584155c8e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant4876bb1dac44f1a168b390abaa4f7b3a3c75cde591f13cb3b24f086e77d553ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c16fc9b-7429-7193-ac7b-a188646d5cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasEigenvector.apply_eq_smul {f : End R M} {μ : R} {x : M} (hx : f.HasEigenvector μ x) :
    f x = μ • x :=
  hx.apply_eq_smul

nonrec
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant4876bb1dac44f1a168b390abaa4f7b3a3c75cde591f13cb3b24f086e77d553ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant4876bb1dac44f1a168b390abaa4f7b3a3c75cde591f13cb3b24f086e77d553ab.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `345fd14c60c8088ebd04ed9ff642e3efc85f1d4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
