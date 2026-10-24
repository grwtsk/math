# alignedSource_mixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2c88077-260b-1ed0-1159-fff1843e6886",
  "kind": "theorem",
  "lexical_name": "alignedSource_mixed",
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
  "slug": "alignedsource-mixed--ea885468aa5fd55f2754b4bc",
  "source": {
    "blob": "e0fd09a2fc8c4d54d792d926d57cb24f27538904",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea885468aa5fd55f2754b4bcb538126b3ba5fd9423c908a453cfbdc41d5a0ec2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2c88077-260b-1ed0-1159-fff1843e6886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alignedSource_mixed (A : ℝ) (hA : 1 ≤ A) (P : Finset ℕ) (p q : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hp : p.Prime) (hq : q.Prime)
    (hpP : p ∉ P) (hqP : q ∉ P) (hpq : p ≠ q) :
    alignedSource A (insert q (insert p P)) - alignedSource A (insert p P) -
      alignedSource A (insert q P) + alignedSource A P =
        weightedDivisors P (vaughanCutoff A / (p * q))
          (fun e => divisorRemainder A ((p * q) * e)) := by
  simp_rw [alignedSource_eq_actual_remainders A hA]
  have h := weightedDivisors_mixed P (vaughanCutoff A) p q (divisorRemainder A)
    hP hp hq hpP hqP hpq
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variant50fa6b41d569cd79b066c88ce315fa861ebad31e5818188eb4d8f8bd3091b4fb.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0fd09a2fc8c4d54d792d926d57cb24f27538904` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
