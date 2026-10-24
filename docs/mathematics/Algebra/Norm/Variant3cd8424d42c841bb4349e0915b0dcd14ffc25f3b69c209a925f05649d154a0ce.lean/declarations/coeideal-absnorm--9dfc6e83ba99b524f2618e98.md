# coeIdeal_absNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e9ce2b5-1015-0b3a-0798-cd01572fbc9d",
  "kind": "theorem",
  "lexical_name": "coeIdeal_absNorm",
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
  "slug": "coeideal-absnorm--9dfc6e83ba99b524f2618e98",
  "source": {
    "blob": "8fb29a182eb8b38d68f20182e56f2533ff5d0a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 111,
    "path": "GRWTSK/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dfc6e83ba99b524f2618e98238de00dcd61740c059a210b2b7f713301cc33d2",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e9ce2b5-1015-0b3a-0798-cd01572fbc9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeIdeal_absNorm (I₀ : Ideal R) :
    absNorm (I₀ : FractionalIdeal R⁰ K) = Ideal.absNorm I₀ := by
  rw [absNorm_eq' 1 I₀ (by rw [one_smul]; rfl), OneMemClass.coe_one, map_one, abs_one,
    Int.cast_one, _root_.div_one]

section IsLocalization

variable [IsLocalization (Algebra.algebraMapSubmonoid R ℤ⁰) K] [Algebra ℚ K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant3cd8424d42c841bb4349e0915b0dcd14ffc25f3b69c209a925f05649d154a0ce.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb29a182eb8b38d68f20182e56f2533ff5d0a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
