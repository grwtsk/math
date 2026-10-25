# powerlt_aleph0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78ea8de7-6f9d-66d0-cbe9-de3e0ad37d3b",
  "kind": "theorem",
  "lexical_name": "powerlt_aleph0",
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
  "slug": "powerlt-aleph0--d814faaeeb55c2bcdf68902d",
  "source": {
    "blob": "d113b35b3d19c5d27cea94671fea561b0543b5e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 984,
    "line": 975,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d814faaeeb55c2bcdf68902debd18292c6142fabc41ea647bc4d4f9550687855",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78ea8de7-6f9d-66d0-cbe9-de3e0ad37d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–984.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem powerlt_aleph0 {c : Cardinal} (h : ℵ₀ ≤ c) : c ^< ℵ₀ = c := by
  apply le_antisymm
  · rw [powerlt_le]
    intro c'
    rw [lt_aleph0]
    rintro ⟨n, rfl⟩
    apply power_nat_le h
  convert le_powerlt c one_lt_aleph0; rw [power_one]
#align cardinal.powerlt_aleph_0 Cardinal.powerlt_aleph0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d113b35b3d19c5d27cea94671fea561b0543b5e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
