# directionalProperContribution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64c060a9dd62ce5cf31dbe6ed55197498bbe60713e19cf887db175075da41b86",
  "kind": "def",
  "lexical_name": "directionalProperContribution",
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
  "slug": "directionalpropercontribution--43686c485d8faf6403562a96",
  "source": {
    "blob": "92b04e215e20cf6793be92b1fd735c2f8c9f35db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43686c485d8faf6403562a96d0ec6ff2a11d27258d37cf518ebe5c042722d050",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64c060a9dd62ce5cf31dbe6ed55197498bbe60713e19cf887db175075da41b86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directionalProperContribution
    (n : ℕ) (hn : 0 < n)
    (κ : DirectionCumulantFamily E R)
    (directions : Fin n → E) : R :=
  properPartitionContribution n hn
    (blockCumulantFunctional κ directions)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant1a31e3e3bdd115c3a2e9698f403512813445c255be17bc67b01af5ca438424d6.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92b04e215e20cf6793be92b1fd735c2f8c9f35db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
