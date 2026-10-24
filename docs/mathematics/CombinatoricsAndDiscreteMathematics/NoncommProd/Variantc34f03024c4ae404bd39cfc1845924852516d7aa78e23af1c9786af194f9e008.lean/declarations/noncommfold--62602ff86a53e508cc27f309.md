# noncommFold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfbbef1b08850cb4242a1681eec1dc1014ce2f091020a600392b468745e9c4ca",
  "kind": "def",
  "lexical_name": "noncommFold",
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
  "slug": "noncommfold--62602ff86a53e508cc27f309",
  "source": {
    "blob": "0f5dc8fa98550936a8a018129ffcb0ddfc50071d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62602ff86a53e508cc27f3099bdbbd53fe4fb99a4e7ddbcadc407df5abb55317",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfbbef1b08850cb4242a1681eec1dc1014ce2f091020a600392b468745e9c4ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def noncommFold (s : Multiset α) (comm : { x | x ∈ s }.Pairwise fun x y => op x y = op y x) :
    α → α :=
  noncommFoldr op s fun x hx y hy h b => by rw [← assoc.assoc, comm hx hy h, assoc.assoc]

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantc34f03024c4ae404bd39cfc1845924852516d7aa78e23af1c9786af194f9e008.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5dc8fa98550936a8a018129ffcb0ddfc50071d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
