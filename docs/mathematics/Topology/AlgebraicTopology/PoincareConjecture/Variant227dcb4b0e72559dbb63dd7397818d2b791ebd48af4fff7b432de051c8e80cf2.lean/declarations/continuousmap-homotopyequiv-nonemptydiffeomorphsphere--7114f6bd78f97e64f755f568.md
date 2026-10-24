# ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5603bf713151c963de2fb257d9bcc55b022d2a1bedec514b1fd3269286523dac",
  "kind": "def",
  "lexical_name": "ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere",
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
  "slug": "continuousmap-homotopyequiv-nonemptydiffeomorphsphere--7114f6bd78f97e64f755f568",
  "source": {
    "blob": "5f3b092761895f47fba1b2c4e28f74bf783cd060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 49,
    "path": "GRWTSK/Topology/AlgebraicTopology/PoincareConjecture/Variant227dcb4b0e72559dbb63dd7397818d2b791ebd48af4fff7b432de051c8e80cf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7114f6bd78f97e64f755f568f4ab71a5789cbf7dd7940c7e43799343cc12c9d6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PoincareConjecture/Variant227dcb4b0e72559dbb63dd7397818d2b791ebd48af4fff7b432de051c8e80cf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5603bf713151c963de2fb257d9bcc55b022d2a1bedec514b1fd3269286523dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere (n : ℕ) : Prop :=
  ∀ (_ : ChartedSpace ℝⁿ M) (_ : IsManifold (𝓡 n) ∞ M),
    M ≃ₕ 𝕊ⁿ → Nonempty (M ≃ₘ⟮𝓡 n, 𝓡 n⟯ 𝕊ⁿ)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PoincareConjecture/Variant227dcb4b0e72559dbb63dd7397818d2b791ebd48af4fff7b432de051c8e80cf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PoincareConjecture/Variant227dcb4b0e72559dbb63dd7397818d2b791ebd48af4fff7b432de051c8e80cf2.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f3b092761895f47fba1b2c4e28f74bf783cd060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
