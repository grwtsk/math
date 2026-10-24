# cutDigest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6178cfde20eb1ab7d72ebaa6c093d6dd83a1ab876e474796bbca7418bef6bcdc",
  "kind": "def",
  "lexical_name": "cutDigest",
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
  "slug": "cutdigest--81c7803d167aa86ba65f6cc2",
  "source": {
    "blob": "a88132cece7f130234f8df094081149a82d69f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 9,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81c7803d167aa86ba65f6cc2226be087e9b1e6338d5791964fc853ac55ccb68e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6178cfde20eb1ab7d72ebaa6c093d6dd83a1ab876e474796bbca7418bef6bcdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cutDigest (cut : EvidenceCut) : Digest :=
  Digest.ofString
    (reprStr cut.activeSnapshot ++ ":" ++
      reprStr cut.text.id ++ ":" ++
      reprStr cut.text.normalizedDigest.bytes.size)

/--
The resolver is deterministic, so its authoritative result address is the
canonical committed-cut address.  Payload-specific artifact digests may be
stored separately without changing replay identity.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Replay/Variantd5c3617dcbf05afe27fa4366739b6577cf4fc221eea06fdd6e22346b7d0357c3.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a88132cece7f130234f8df094081149a82d69f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
