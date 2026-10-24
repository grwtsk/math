# modEq_mersenne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57a29880b082de9417c229bbe3ecdb51649a86bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 634,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd53740e-9600-d4ab-60f1-98bd39f836b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21f51091-ba28-ae47-c5ae-8962db64c2ab",
  "kind": "theorem",
  "lexical_name": "modEq_mersenne",
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
  "slug": "modeq-mersenne--0cafd1a382a9cc59eeb34b11",
  "source": {
    "blob": "57a29880b082de9417c229bbe3ecdb51649a86bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 634,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cafd1a382a9cc59eeb34b1190945eb97676ec92a8bfed3710b48d108865ee87",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21f51091-ba28-ae47-c5ae-8962db64c2ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modEq_mersenne (n k : ℕ) : k ≡ k / 2 ^ n + k % 2 ^ n [MOD 2 ^ n - 1] :=
  -- See https://leanprover.zulipchat.com/#narrow/stream/113489-new-members/topic/help.20finding.20a.20lemma/near/177698446
  calc
    k = 2 ^ n * (k / 2 ^ n) + k % 2 ^ n := (Nat.div_add_mod k (2 ^ n)).symm
    _ ≡ 1 * (k / 2 ^ n) + k % 2 ^ n [MOD 2 ^ n - 1] :=
      ((Nat.modEq_sub <| Nat.succ_le_of_lt <| pow_pos zero_lt_two _).mul_right _).add_right _
    _ = k / 2 ^ n + k % 2 ^ n := by rw [one_mul]
#align modeq_mersenne modEq_mersenne

-- It's hard to know what the limiting factor for large Mersenne primes would be.
-- In the purely computational world, I think it's the squaring operation in `s`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57a29880b082de9417c229bbe3ecdb51649a86bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
