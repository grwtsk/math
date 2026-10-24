# principalOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e9d7efb6540c5d3f1d58aab4de9ee3b37bef8115b120588ab15b8d8c98f166a",
  "kind": "def",
  "lexical_name": "principalOpen",
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
  "slug": "principalopen--f54e2ed4f95fff1495a8be53",
  "source": {
    "blob": "8be3da1e4100cae33a883aeb8fc565ec3029c0de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 38,
    "path": "GRWTSK/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f54e2ed4f95fff1495a8be53cf3b5225f1cc709e21c97e923193d2a18d76cc42",
  "verification": {
    "reference": "docs/verification/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e9d7efb6540c5d3f1d58aab4de9ee3b37bef8115b120588ab15b8d8c98f166a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def principalOpen (x : X) : Opens X := .mk { y | x ≤ y } <| by
  rw [IsUpperSet.isOpen_iff_isUpperSet]
  intro y z h1 h2
  exact le_trans h2 h1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Alexandrov/Variantf3a76d502cdb5bee638adcbbd447cd42f83d0ae53ac665656f7e2eaa45fb03e7.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8be3da1e4100cae33a883aeb8fc565ec3029c0de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
