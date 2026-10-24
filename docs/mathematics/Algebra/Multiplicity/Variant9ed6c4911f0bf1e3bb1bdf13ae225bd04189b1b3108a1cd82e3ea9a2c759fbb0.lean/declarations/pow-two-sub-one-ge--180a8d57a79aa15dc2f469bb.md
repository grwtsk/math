# pow_two_sub_one_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:368179b0-830b-7af2-d3ae-d727bf59f056",
  "kind": "lemma",
  "lexical_name": "pow_two_sub_one_ge",
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
  "slug": "pow-two-sub-one-ge--180a8d57a79aa15dc2f469bb",
  "source": {
    "blob": "848608d1d24ba6b81fa4b30e669ca44c893309dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 371,
    "path": "GRWTSK/Algebra/Multiplicity/Variant9ed6c4911f0bf1e3bb1bdf13ae225bd04189b1b3108a1cd82e3ea9a2c759fbb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:180a8d57a79aa15dc2f469bb89876c76240c724ec2e0a994ba081d81c923ecd6",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variant9ed6c4911f0bf1e3bb1bdf13ae225bd04189b1b3108a1cd82e3ea9a2c759fbb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:368179b0-830b-7af2-d3ae-d727bf59f056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_two_sub_one_ge (h1x : 1 < x) (hx : ¬2 ∣ x) (hn : n ≠ 0) (hneven : Even n) :
    padicValNat 2 n + 2 ≤ padicValNat 2 (x ^ n - 1) := by
  have : padicValNat 2 ((x + 1) * (x - 1)) ≥ 3 := by
    refine (padicValNat_dvd_iff_le (by grind [mul_ne_zero])).mp ?_
    simp [← Nat.pow_two_sub_pow_two x 1]
    grind [Nat.eight_dvd_sq_sub_one_of_odd]
  have := pow_two_sub_one h1x hx hn hneven
  grind [← padicValNat.mul]

variable {p : ℕ} [hp : Fact p.Prime] (hp1 : Odd p)
include hp hp1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variant9ed6c4911f0bf1e3bb1bdf13ae225bd04189b1b3108a1cd82e3ea9a2c759fbb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variant9ed6c4911f0bf1e3bb1bdf13ae225bd04189b1b3108a1cd82e3ea9a2c759fbb0.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `848608d1d24ba6b81fa4b30e669ca44c893309dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
