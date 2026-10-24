# ValidTokenization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9823bb9d6a721b2555963d92a043e4f5da693e4031000e8230e623ad952f9b8e",
  "kind": "def",
  "lexical_name": "ValidTokenization",
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
  "slug": "validtokenization--bc0030fca54c94e50ca600ad",
  "source": {
    "blob": "5eb42535db29f7fd3dfdd6d51ae2949021e5643a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc0030fca54c94e50ca600ad1126472df2623d3cce007c4e226e693c70a1475e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolution/Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9823bb9d6a721b2555963d92a043e4f5da693e4031000e8230e623ad952f9b8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ValidTokenization
    {cut : EvidenceCut}
    (segmentation : CertifiedSegmentation cut) : Prop :=
  segmentation.tokenization.ordered ∧
  segmentation.tokenization.disjoint ∧
  segmentation.tokenization.covers

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolution/Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Variante34ac3ac9cee7bdeccfeba7197574c821450c819ee2fddd913a718358afc9d9b.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb42535db29f7fd3dfdd6d51ae2949021e5643a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
