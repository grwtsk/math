# divisibleByIntOfSMulTopEqTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a90fdef388d4d1506d477786215b2871470c37ed42b51397f7b3f2640c63eca0",
  "kind": "def",
  "lexical_name": "divisibleByIntOfSMulTopEqTop",
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
  "slug": "divisiblebyintofsmultopeqtop--69bcefa2a5195e59a5dbb8c2",
  "source": {
    "blob": "aeb8a36484a42a696c8ed928bc6e433fb55af286",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 176,
    "path": "GRWTSK/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69bcefa2a5195e59a5dbb8c24a5adb46ea7d8f5806615a453a16cd7e17f0507f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a90fdef388d4d1506d477786215b2871470c37ed42b51397f7b3f2640c63eca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def divisibleByIntOfSMulTopEqTop
    (H : ∀ {n : ℤ} (_hn : n ≠ 0), n • (⊤ : AddSubgroup A) = ⊤) : DivisibleBy A ℤ where
  div a n :=
    if hn : n = 0 then 0 else (show a ∈ n • (⊤ : AddSubgroup A) by rw [H hn]; trivial).choose
  div_zero _ := dif_pos rfl
  div_cancel a hn := by
    simp_rw [dif_neg hn]
    generalize_proofs h1
    exact h1.choose_spec.2

end AddCommGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Divisible/Variant3ece90ac33a7f469895916fef2a042c2d7a8a357bd34e1c540afc09772988222.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb8a36484a42a696c8ed928bc6e433fb55af286` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
