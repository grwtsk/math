# mem_of_mem_of_mem_sym

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:212c20e7-0ec4-7546-f543-8e2100a0c229",
  "kind": "theorem",
  "lexical_name": "mem_of_mem_of_mem_sym",
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
  "slug": "mem-of-mem-of-mem-sym--af3005c4d28012cd3fe3841e",
  "source": {
    "blob": "d89879815d5c64a01e53258b5980df628c8da158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 282,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af3005c4d28012cd3fe3841eb2231c50b2036fb550d4f9f43b909662c1e22454",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:212c20e7-0ec4-7546-f543-8e2100a0c229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_mem_of_mem_sym {n : ℕ} {xs : List α} {a : α} {z : Sym α n}
    (ha : a ∈ z) (hz : z ∈ xs.sym n) : a ∈ xs :=
  match n, xs with
  | 0, xs => by
    cases Sym.eq_nil_of_card_zero z
    simp at ha
  | n + 1, [] => by simp [List.sym] at hz
  | n + 1, x :: xs => by
    rw [List.sym, mem_append, mem_map] at hz
    obtain ⟨z, hz, rfl⟩ | hz := hz
    · rw [Sym.mem_cons] at ha
      obtain rfl | ha := ha
      · simp
      · exact mem_of_mem_of_mem_sym ha hz
    · rw [mem_cons]
      right
      exact mem_of_mem_of_mem_sym ha hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d89879815d5c64a01e53258b5980df628c8da158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
