# insertIdx_pmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb831e65-aeb9-9ffd-3ec4-80d282b431e1",
  "kind": "theorem",
  "lexical_name": "insertIdx_pmap",
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
  "slug": "insertidx-pmap--652af321a7a2bf5ecb02cf09",
  "source": {
    "blob": "b4d3055a361805aeaf6b2db15516f5923a3cf553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:652af321a7a2bf5ecb02cf0959d12ae6093d1378596535c8829bd78eb0e58a6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb831e65-aeb9-9ffd-3ec4-80d282b431e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem insertIdx_pmap {p : α → Prop} (f : ∀ a, p a → β) {l : List α} {a : α} {n : ℕ}
    (hl : ∀ x ∈ l, p x) (ha : p a) :
    (l.pmap f hl).insertIdx n (f a ha) = (l.insertIdx n a).pmap f
      (fun _ h ↦ (eq_or_mem_of_mem_insertIdx h).elim (fun heq ↦ heq ▸ ha) (hl _)) := by
  induction n generalizing l with
  | zero => cases l <;> simp
  | succ n ihn => cases l <;> simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InsertIdx/Variant200af8bd8381d4287a0b94d7696795432a8f72e56fcff43964404707a47253a9.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d3055a361805aeaf6b2db15516f5923a3cf553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
