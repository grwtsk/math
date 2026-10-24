# unitDivisorAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:133c70079aa665c5dcdfcb8382e3a657248af10819c82bf8b0a15f9add0c5e8d",
  "kind": "def",
  "lexical_name": "unitDivisorAtom",
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
  "slug": "unitdivisoratom--4677aaa1be4e25fd4e2734bc",
  "source": {
    "blob": "549f648eb69e1b862b47f3a894d22f6a474a1fab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant84bf459685fe7e5160bfa33787f6fc2ad21ed6f793fae6fb0901c7611c6459de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4677aaa1be4e25fd4e2734bca7f25bd8a330723a06676b833af8b4fa562890d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant84bf459685fe7e5160bfa33787f6fc2ad21ed6f793fae6fb0901c7611c6459de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:133c70079aa665c5dcdfcb8382e3a657248af10819c82bf8b0a15f9add0c5e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def unitDivisorAtom (A : ℝ) (n : ℕ)
    (hn : n ∈ primePowerInventory (2 * A)) : SourceAtom A :=
  ⟨⟨n,hn⟩,⟨(1,n),Nat.mem_divisorsAntidiagonal.mpr
    ⟨by simp,ne_of_gt ((by norm_num : 0 < (2 : ℕ)).trans_le
      (Finset.mem_Icc.mp hn).1)⟩⟩⟩

/-- Both coordinates and the actual independently weighted operator row remain literal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant84bf459685fe7e5160bfa33787f6fc2ad21ed6f793fae6fb0901c7611c6459de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A2254aab86ed27cf229334e1f6bdb3dd20b0bcaf2855471d43e1d8cd0ad91ef7SourceActualArit/Variant84bf459685fe7e5160bfa33787f6fc2ad21ed6f793fae6fb0901c7611c6459de.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `549f648eb69e1b862b47f3a894d22f6a474a1fab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
