# IsLocalization.AtPrime.isDedekindDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1be7366257801362a918867fd4007702bf5bb838",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:483956b0-4fcf-e108-8664-54441b3df56a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:954314f2-ddb2-bd32-3dd3-a0cc7c990173",
  "kind": "theorem",
  "lexical_name": "IsLocalization.AtPrime.isDedekindDomain",
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
  "slug": "islocalization-atprime-isdedekinddomain--97103e217f1191164256b756",
  "source": {
    "blob": "1be7366257801362a918867fd4007702bf5bb838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 87,
    "path": "GRWTSK/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97103e217f1191164256b7565afbb670585629a3546b59231dc38a9feaf15a83",
  "verification": {
    "reference": "docs/verification/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:954314f2-ddb2-bd32-3dd3-a0cc7c990173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.AtPrime.isDedekindDomain [IsDedekindDomain A] (P : Ideal A) [P.IsPrime]
    (Aₘ : Type*) [CommRing Aₘ] [IsDomain Aₘ] [Algebra A Aₘ] [IsLocalization.AtPrime Aₘ P] :
    IsDedekindDomain Aₘ :=
  IsLocalization.isDedekindDomain A P.primeCompl_le_nonZeroDivisors Aₘ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Dvr/Variant041f6790c6935f955fec139aabf61cbd677939408a1d7ec00e5ce4b355f6cde5.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be7366257801362a918867fd4007702bf5bb838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
