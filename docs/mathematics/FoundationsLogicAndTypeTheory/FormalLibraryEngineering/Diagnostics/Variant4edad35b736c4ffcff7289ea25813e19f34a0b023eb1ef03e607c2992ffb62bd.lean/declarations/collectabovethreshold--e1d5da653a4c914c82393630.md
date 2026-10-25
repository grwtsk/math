# collectAboveThreshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2dfb07084795988828266a3b586bf9a4778a633cd2bf1f20b0d036db1409c56f",
  "kind": "def",
  "lexical_name": "collectAboveThreshold",
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
  "slug": "collectabovethreshold--e1d5da653a4c914c82393630",
  "source": {
    "blob": "d1b9c832edb7f5cb4dee3a33d99a78c5338682c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1d5da653a4c914c82393630dbc07ae4adcb2a46d2df3ecd64873c3ed99fa3b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2dfb07084795988828266a3b586bf9a4778a633cd2bf1f20b0d036db1409c56f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectAboveThreshold [BEq α] [Hashable α] (counters : PHashMap α Nat) (threshold : Nat) (p : α → Bool) (lt : α → α → Bool) : Array (α × Nat) := Id.run do
  let mut r := #[]
  for (declName, counter) in counters do
    if counter > threshold then
    if p declName then
      r := r.push (declName, counter)
  return r.qsort fun (d₁, c₁) (d₂, c₂) => if c₁ == c₂ then lt d₁ d₂ else c₁ > c₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostics/Variant4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b9c832edb7f5cb4dee3a33d99a78c5338682c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
