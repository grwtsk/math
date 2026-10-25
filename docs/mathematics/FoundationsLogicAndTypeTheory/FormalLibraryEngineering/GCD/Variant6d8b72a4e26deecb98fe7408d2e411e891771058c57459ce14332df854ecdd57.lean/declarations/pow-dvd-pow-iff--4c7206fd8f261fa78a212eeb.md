# pow_dvd_pow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71b915bd-31ee-a67e-7f3d-e1b9374b5b5e",
  "kind": "theorem",
  "lexical_name": "pow_dvd_pow_iff",
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
  "slug": "pow-dvd-pow-iff--4c7206fd8f261fa78a212eeb",
  "source": {
    "blob": "5c5b7b4f2d3e0bd9548cd06c8a07c733329e725a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 429,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gcd/Variant6d8b72a4e26deecb98fe7408d2e411e891771058c57459ce14332df854ecdd57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c7206fd8f261fa78a212eeb180a742906ace7b02cdfefbe68c5228f497e89c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant6d8b72a4e26deecb98fe7408d2e411e891771058c57459ce14332df854ecdd57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71b915bd-31ee-a67e-7f3d-e1b9374b5b5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_dvd_pow_iff {a b : Int} {n : Nat} (h : n ≠ 0) : a ^ n ∣ b ^ n ↔ a ∣ b := by
  simp [← natAbs_dvd_natAbs, natAbs_pow, Nat.pow_dvd_pow_iff h]

/-! ## lcm -/

/--
Computes the least common multiple of two integers as a natural number. The LCM of two integers is
the smallest natural number that's evenly divisible by the absolute values of both.

Examples:
 * `Int.lcm 9 6 = 18`
 * `Int.lcm 9 (-6) = 18`
 * `Int.lcm 9 3 = 9`
 * `Int.lcm 9 (-3) = 9`
 * `Int.lcm 0 3 = 0`
 * `Int.lcm (-3) 0 = 0`
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Variant6d8b72a4e26deecb98fe7408d2e411e891771058c57459ce14332df854ecdd57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gcd/Variant6d8b72a4e26deecb98fe7408d2e411e891771058c57459ce14332df854ecdd57.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5b7b4f2d3e0bd9548cd06c8a07c733329e725a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
