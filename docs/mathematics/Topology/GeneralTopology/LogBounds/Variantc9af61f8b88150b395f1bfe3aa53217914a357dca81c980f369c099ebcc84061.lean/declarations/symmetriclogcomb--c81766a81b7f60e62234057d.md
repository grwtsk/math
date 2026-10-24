# symmetricLogComb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0bee6abb800c4ddd95b3856d50905aadac05fde08569974222ce2f5baa77d0a",
  "kind": "def",
  "lexical_name": "symmetricLogComb",
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
  "slug": "symmetriclogcomb--c81766a81b7f60e62234057d",
  "source": {
    "blob": "fc59dbf7f90a4d6c695870594f016290bb019366",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c81766a81b7f60e62234057d9230983fe4d3a3025a9dc22dbb9db126b9071d2e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0bee6abb800c4ddd95b3856d50905aadac05fde08569974222ce2f5baa77d0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def symmetricLogComb (t : ℝ) : ℝ := 1 / log (1 + t) + 1 / log (1 - t)

/-- g(t) > 0 for 0 < t < 1.
    Key identity: g(t) = log(1-t²) / (log(1+t) · log(1-t)) = (neg)/(neg) > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variantc9af61f8b88150b395f1bfe3aa53217914a357dca81c980f369c099ebcc84061.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc59dbf7f90a4d6c695870594f016290bb019366` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
