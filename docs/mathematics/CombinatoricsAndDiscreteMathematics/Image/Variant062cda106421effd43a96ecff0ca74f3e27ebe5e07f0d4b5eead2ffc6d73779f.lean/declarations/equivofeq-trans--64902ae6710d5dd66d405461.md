# equivOfEq_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf558494-5c35-af30-f276-7c1fd1e8f7ff",
  "kind": "lemma",
  "lexical_name": "equivOfEq_trans",
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
  "slug": "equivofeq-trans--64902ae6710d5dd66d405461",
  "source": {
    "blob": "10d06b669a30f29a6e5e2dd693593f1e7aa4bb3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 826,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64902ae6710d5dd66d405461a15e1e430adeb8b716d31b277d7f4f65ef44fb9a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf558494-5c35-af30-f276-7c1fd1e8f7ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 826–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivOfEq_trans (h : s = t) (h' : t = u) :
    equivOfEq (h.trans h') = (equivOfEq h).trans (equivOfEq h') := rfl

@[deprecated (since := "2026-08-29")] alias _root_.Equiv.Finset.congr := equivOfEq
@[deprecated (since := "2026-08-29")]
alias _root_.Equiv.Finset.congr_apply_coe := equivOfEq_apply_coe
@[deprecated (since := "2026-08-29")]
alias _root_.Equiv.Finset.congr_symm_apply_coe := equivOfEq_symm_apply_coe
@[deprecated (since := "2026-08-29")] alias _root_.Equiv.Finset.congr_refl := equivOfEq_refl
@[deprecated (since := "2026-08-29")] alias _root_.Equiv.Finset.congr_symm := equivOfEq_symm
@[deprecated (since := "2026-08-29")] alias _root_.Equiv.Finset.congr_trans := equivOfEq_trans

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean#L826).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10d06b669a30f29a6e5e2dd693593f1e7aa4bb3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
