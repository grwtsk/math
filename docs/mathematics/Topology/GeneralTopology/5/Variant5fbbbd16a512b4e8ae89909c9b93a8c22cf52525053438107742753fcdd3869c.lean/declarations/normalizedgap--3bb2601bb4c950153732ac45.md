# normalizedGap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19cbdabd4adf1fb5c4ff373ae1f4c0cd4bf85fcfa92fd22ff14174083e1f4ba0",
  "kind": "def",
  "lexical_name": "normalizedGap",
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
  "slug": "normalizedgap--3bb2601bb4c950153732ac45",
  "source": {
    "blob": "97ae153f5271ffc956d052dbd1fc588027a948a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bb2601bb4c950153732ac4574e79baee6d6dcc87de0c4c8f52e94e0ca27d305",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19cbdabd4adf1fb5c4ff373ae1f4c0cd4bf85fcfa92fd22ff14174083e1f4ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def normalizedGap (n : ℕ) : ℝ := primeGap n / log n

/--
The set $S$ of limit points of $\frac{p_{n+1}-p_n}{\log n}$.

Only the *finite* limit points are collected here; that $\infty$ is also a limit point is
Westzynthius' theorem, recorded separately as `erdos_5.variants.westzynthius`.

Erdős' question, as well as [HiMa88] and [Pi16], normalises the prime gaps by $\log n$, whereas
[GPY09], [BFM16] and [Me20] normalise by $\log p_n$. Since $\log p_n/\log n \to 1$ the two
normalisations have the same limit points, so all the results below are stated for the
normalisation used here.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/5/Variant5fbbbd16a512b4e8ae89909c9b93a8c22cf52525053438107742753fcdd3869c.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ae153f5271ffc956d052dbd1fc588027a948a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
