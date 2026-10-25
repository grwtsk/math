# ppred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec77feb8-8bad-a556-1ced-ec092573f094",
  "kind": "theorem",
  "lexical_name": "ppred",
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
  "slug": "ppred--cb1100bdc2086f5bac95bc94",
  "source": {
    "blob": "17ef398f40bce1b452ba73d183802bad9aeae17e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb1100bdc2086f5bac95bc947e129fb37d27cfe113e9384f7d5491b9aa7c5af1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec77feb8-8bad-a556-1ced-ec092573f094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ppred : Partrec fun n => ppred n :=
  have : Primrec₂ fun n m => if n = Nat.succ m then 0 else 1 :=
    (Primrec.ite
      (@PrimrecRel.comp _ _ _ _ _ _ _ _ _ _
        Primrec.eq Primrec.fst (_root_.Primrec.succ.comp Primrec.snd))
      (_root_.Primrec.const 0) (_root_.Primrec.const 1)).to₂
  (of_primrec (Primrec₂.unpaired'.2 this)).rfind.of_eq fun n => by
    cases n <;> simp
    · exact
        eq_none_iff.2 fun a ⟨⟨m, h, _⟩, _⟩ => by
          simp [show 0 ≠ m.succ by intro h; injection h] at h
    · refine eq_some_iff.2 ?_
      simp only [mem_rfind, not_true, IsEmpty.forall_iff, decide_true, mem_some_iff,
        false_eq_decide_iff, true_and]
      intro m h
      simp [ne_of_gt h]

end Partrec

end Nat

/-- Partially recursive partial functions `α → σ` between `Primcodable` types -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant42ea758b979f360b894e5df4350e5a8c31e46929c4f0deb79341240df2410646.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17ef398f40bce1b452ba73d183802bad9aeae17e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
