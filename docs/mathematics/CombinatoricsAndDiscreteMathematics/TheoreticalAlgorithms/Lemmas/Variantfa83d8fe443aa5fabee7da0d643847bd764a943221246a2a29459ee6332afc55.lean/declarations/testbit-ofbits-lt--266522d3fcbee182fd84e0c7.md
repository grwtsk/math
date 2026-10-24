# testBit_ofBits_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1cc7b7a-1b75-e1f5-af1c-5eca51ae07e8",
  "kind": "theorem",
  "lexical_name": "testBit_ofBits_lt",
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
  "slug": "testbit-ofbits-lt--266522d3fcbee182fd84e0c7",
  "source": {
    "blob": "64fe63c24672b3e653e86d9cf61aaa777d9a9d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfa83d8fe443aa5fabee7da0d643847bd764a943221246a2a29459ee6332afc55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:266522d3fcbee182fd84e0c775c6f4f86c102ff94183f6e2f0ee96e40eb13b77",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfa83d8fe443aa5fabee7da0d643847bd764a943221246a2a29459ee6332afc55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1cc7b7a-1b75-e1f5-af1c-5eca51ae07e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem testBit_ofBits_lt (f : Fin n → Bool) (i : Nat) (h : i < n) :
    (ofBits f).testBit i = f ⟨i, h⟩ := by
  induction n generalizing i with
  | zero => contradiction
  | succ n ih =>
    simp only [ofBits_succ]
    match i with
    | 0 => simp [mod_eq_of_lt (Bool.toNat_lt _)]
    | i+1 =>
      rw [testBit_add_one, mul_add_div Nat.zero_lt_two, Nat.div_eq_of_lt (Bool.toNat_lt _)]
      exact ih (f ∘ Fin.succ) i (Nat.lt_of_succ_lt_succ h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfa83d8fe443aa5fabee7da0d643847bd764a943221246a2a29459ee6332afc55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantfa83d8fe443aa5fabee7da0d643847bd764a943221246a2a29459ee6332afc55.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64fe63c24672b3e653e86d9cf61aaa777d9a9d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
