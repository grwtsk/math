# shiftedInventory_onset_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ff25851-2fc6-412a-acac-6db32fa93a7d",
  "kind": "theorem",
  "lexical_name": "shiftedInventory_onset_iff",
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
  "slug": "shiftedinventory-onset-iff--24d76a7b7e0aa7fbd2e8e047",
  "source": {
    "blob": "14f05acdd9f3b1f192f6c1ec380274da245a0ee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24d76a7b7e0aa7fbd2e8e047f3071b725a1f3a6c206e33c796162fcf256f9211",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ff25851-2fc6-412a-acac-6db32fa93a7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftedInventory_onset_iff (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    (p,k) ∈ shiftedInventory ⌊Real.exp t⌋₊ ↔ powerOnset p k ≤ t := by
  rw [mem_shiftedInventory_iff,prime_power_closed_onset_iff t p.property]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProperPowerAssembly/Variant3a1808f19a34f79df7c4782ae04e81996b9d50667172c1626b448a35b293ba9a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14f05acdd9f3b1f192f6c1ec380274da245a0ee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
