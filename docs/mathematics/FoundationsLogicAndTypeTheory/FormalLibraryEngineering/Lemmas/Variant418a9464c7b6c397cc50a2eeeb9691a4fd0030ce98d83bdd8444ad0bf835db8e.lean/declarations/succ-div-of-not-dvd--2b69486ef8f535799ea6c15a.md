# succ_div_of_not_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10e24e09-1b5c-7541-e34c-93ddaa5c7036",
  "kind": "theorem",
  "lexical_name": "succ_div_of_not_dvd",
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
  "slug": "succ-div-of-not-dvd--2b69486ef8f535799ea6c15a",
  "source": {
    "blob": "79a0e593e1a6d1e23e6da61b8e736ceb642664d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b69486ef8f535799ea6c15ac9f643fc34230927b45741f10c09ae14780ccf86",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10e24e09-1b5c-7541-e34c-93ddaa5c7036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_div_of_not_dvd {a b : Nat} (h : ¬ b ∣ a + 1) :
    (a + 1) / b = a / b := by
  replace h := mt dvd_of_mod_eq_zero h
  cases b with
  | zero => simp
  | succ b =>
    rw [eq_comm, Nat.div_eq_iff (by simp)]
    constructor
    · rw [Nat.div_mul_self_eq_mod_sub_self]
      omega
    · rw [Nat.div_mul_self_eq_mod_sub_self]
      have : (a + 1) % (b + 1) < b + 1 := Nat.mod_lt _ (by simp)
      omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79a0e593e1a6d1e23e6da61b8e736ceb642664d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
