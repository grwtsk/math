# block_unblock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7b5dafb-0385-00af-7ff0-a53d18281930",
  "kind": "theorem",
  "lexical_name": "block_unblock",
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
  "slug": "block-unblock--09801a11eecf17e304b2a911",
  "source": {
    "blob": "e1df3567a89d242a0ad61bf3bce5bec43a2fd9d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 221,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09801a11eecf17e304b2a9112e239c0ac9ba26dc2f42ccf5745d6f4afd4c0f54",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7b5dafb-0385-00af-7ff0-a53d18281930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem block_unblock {r : Nat} (hr : 0 < r) (packet : BitPacket r) :
    block hr (unblock packet) = packet := by
  rcases packet with ⟨⟨rows, matrix, payloadBits⟩, hcapacity, hrows, hpadding⟩
  change rows = rowsFor r payloadBits at hrows
  subst rows
  apply Subtype.ext
  refine RawBitPacket.ext
    (x := (block hr (unblock
      ⟨⟨rowsFor r payloadBits, matrix, payloadBits⟩,
        ⟨hcapacity, rfl, hpadding⟩⟩)).1)
    (y := ⟨rowsFor r payloadBits, matrix, payloadBits⟩)
    rfl (heq_of_eq ?_) rfl
  apply (BinMatGalois.flattenEquiv (rowsFor r payloadBits) r).injective
  funext k
  by_cases hk : k.val < payloadBits
  · simp [block, unblock, hk]
    rfl
  · have hpad := hpadding k (Nat.le_of_not_gt hk)
    simpa [block, unblock, hk] using hpad

/-- Exact equivalence between arbitrary bit strings and canonical packets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant0046a0ac32585eb8b3e676d3a35a690f1e441f5a4fdd4498a831acea74262ec7.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1df3567a89d242a0ad61bf3bce5bec43a2fd9d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
