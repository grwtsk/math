# packNatLE_unpackNatLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:921f8d5f-4d81-3192-ac04-936407cd3446",
  "kind": "theorem",
  "lexical_name": "packNatLE_unpackNatLE",
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
  "slug": "packnatle-unpacknatle--52f4856fa7ce8b486ef11995",
  "source": {
    "blob": "3a07c65b502f19d1b120a4895bbfb87e062fccc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 104,
    "path": "GRWTSK/GroupTheory/Words/HeisenbergWire.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52f4856fa7ce8b486ef119957f46b1a1786a1ec3f2e2edf3565793a531dcbfd3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Words/HeisenbergWire.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:921f8d5f-4d81-3192-ac04-936407cd3446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packNatLE_unpackNatLE (count word : Nat)
    (bound : word < 256 ^ count) :
    packNatLE (unpackNatLE count word) = word := by
  induction count generalizing word with
  | zero =>
    have hz : word = 0 := by
      simp only [Nat.pow_zero] at bound
      omega
    subst word
    rfl
  | succ count ih =>
    have hdiv : word / 256 < 256 ^ count := by
      apply Nat.div_lt_of_lt_mul
      simpa only [Nat.pow_succ, Nat.mul_comm] using bound
    simp only [unpackNatLE, packNatLE,
      UInt8.toNat_ofNat', Nat.mod_mod, ih (word / 256) hdiv]
    exact Nat.mod_add_div word 256

end ByteWire

open GRWTSK.InformationTheory.ReedSolomon.Wire

/-- A bound on source coordinates, not a bound on products or ordered area. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Words/HeisenbergWire.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GroupTheory/Words/HeisenbergWire.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a07c65b502f19d1b120a4895bbfb87e062fccc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
