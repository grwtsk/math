# domain_not_minus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea36e9b6-f4d7-f758-810c-999cc1f27b99",
  "kind": "theorem",
  "lexical_name": "domain_not_minus",
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
  "slug": "domain-not-minus--3868ca7c07ce53cbf674daf9",
  "source": {
    "blob": "b79491536ecbeb8d18e8c0c024fd6a0735fd5a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3868ca7c07ce53cbf674daf98c74e91ffc5630d4333c806ee0066a200a3e0929",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea36e9b6-f4d7-f758-810c-999cc1f27b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_not_minus (hC : IsComponent (PrimaryEdge P) C)
    (hK : Ω.profile T.type ∈ C) (hL : Ω.profile (a.target hw).type ∈ C) :
    ¬ FreeLayer P C (Ω.profile a.domain) true := by
  intro hm
  exact Bool.noConfusion (hm.direct_sign (a.domain_direct hw hC hK hL hm.active))
end FrameKey

variable [Fintype S] {hw} (hno : ¬ ForbiddenConfiguration P C)

open Classical in
/-- Absence is mandatory at inactive domains. There are no latent values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b79491536ecbeb8d18e8c0c024fd6a0735fd5a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
