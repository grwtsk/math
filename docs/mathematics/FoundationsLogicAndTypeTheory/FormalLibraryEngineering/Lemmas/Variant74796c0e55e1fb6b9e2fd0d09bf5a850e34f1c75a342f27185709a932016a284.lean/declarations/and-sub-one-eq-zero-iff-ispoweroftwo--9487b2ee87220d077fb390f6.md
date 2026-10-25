# and_sub_one_eq_zero_iff_isPowerOfTwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4873ac4-8f38-891d-49ef-efbc81cac982",
  "kind": "theorem",
  "lexical_name": "and_sub_one_eq_zero_iff_isPowerOfTwo",
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
  "slug": "and-sub-one-eq-zero-iff-ispoweroftwo--9487b2ee87220d077fb390f6",
  "source": {
    "blob": "56f529bac453ce3389dced9de36b75297461a2c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9487b2ee87220d077fb390f6c32080e26e8bc08427f605e0349bb67a113c61fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4873ac4-8f38-891d-49ef-efbc81cac982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem and_sub_one_eq_zero_iff_isPowerOfTwo {n : Nat} (h : n ≠ 0) :
    (n &&& (n - 1)) = 0 ↔ n.isPowerOfTwo := by
  constructor
  · intro hbitwise
    false_or_by_contra
    rename_i hpow2
    have := and_sub_one_testBit_log2 h hpow2
    rwa [hbitwise, zero_testBit n.log2, Bool.false_eq_true] at this
  · intro hpow2
    rcases hpow2 with ⟨_, hpow2⟩
    rw [hpow2, and_two_pow_sub_one_eq_mod, mod_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant74796c0e55e1fb6b9e2fd0d09bf5a850e34f1c75a342f27185709a932016a284.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f529bac453ce3389dced9de36b75297461a2c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
