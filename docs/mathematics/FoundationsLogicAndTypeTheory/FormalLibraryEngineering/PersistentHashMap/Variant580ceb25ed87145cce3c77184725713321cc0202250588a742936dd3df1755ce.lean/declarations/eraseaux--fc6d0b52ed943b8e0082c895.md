# eraseAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e4f46d2cd10f1704518da1d99adaf3a3c087254be3cc06f8c778bec92c742f9",
  "kind": "def",
  "lexical_name": "eraseAux",
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
  "slug": "eraseaux--fc6d0b52ed943b8e0082c895",
  "source": {
    "blob": "9ff843783f55193334fa7a1fa34e41d2db50f017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc6d0b52ed943b8e0082c895c31be2f249d758f3ad1a4327eb41cbe0cd26573d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e4f46d2cd10f1704518da1d99adaf3a3c087254be3cc06f8c778bec92c742f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eraseAux [BEq α] : Node α β → USize → α → Node α β
  | n@(Node.collision keys vals heq), _, k =>
    match keys.finIdxOf? k with
    | some idx =>
      let keys' := keys.eraseIdx idx
      have keq := keys.size_eraseIdx idx _
      let vals' := vals.eraseIdx (Eq.ndrec idx heq)
      have veq := vals.size_eraseIdx (Eq.ndrec idx heq) _
      have : keys.size - 1 = vals.size - 1 := by rw [heq]
      Node.collision keys' vals' (keq.trans (this.trans veq.symm))
    | none     => n
  | n@(Node.entries entries), h, k =>
    let j       := (mod2Shift h shift).toNat
    let entry   := entries[j]!
    match entry with
    | Entry.null       => n
    | Entry.entry k' _ =>
      if k == k' then Node.entries (entries.set! j Entry.null) else n
    | Entry.ref node   =>
      let entries := entries.set! j Entry.null
      let newNode := eraseAux node (div2Shift h shift) k
      match isUnaryNode newNode with
      | none        => Node.entries (entries.set! j (Entry.ref newNode))
      | some (k, v) => Node.entries (entries.set! j (Entry.entry k v))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ff843783f55193334fa7a1fa34e41d2db50f017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
