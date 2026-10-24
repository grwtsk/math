# cons_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b41bdea808fe5397f0c9417612be33ade3a1dfe6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f172610f1f8859fbe96a064245977b9ffb98f71fbaf506a36c3fc356d1106a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4be0845-b66c-1baf-6825-dd8ca60c6dd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df2a181d-5b22-297b-989e-eeda0d805aba",
  "kind": "theorem",
  "lexical_name": "cons_swap",
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
  "slug": "cons-swap--7a61d0bb8afeb67aeb87c982",
  "source": {
    "blob": "b41bdea808fe5397f0c9417612be33ade3a1dfe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 314,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Insert/Variant4f172610f1f8859fbe96a064245977b9ffb98f71fbaf506a36c3fc356d1106a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a61d0bb8afeb67aeb87c98207a7359590cd503f1d5d8a660baf19932acda8c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Insert/Variant4f172610f1f8859fbe96a064245977b9ffb98f71fbaf506a36c3fc356d1106a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df2a181d-5b22-297b-989e-eeda0d805aba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_swap (hb : b ∉ s) (ha : a ∉ s.cons b hb) :
    (s.cons b hb).cons a ha = (s.cons a fun h ↦ ha (mem_cons.mpr (.inr h))).cons b fun h ↦
      ha (mem_cons.mpr (.inl ((mem_cons.mp h).elim symm (fun h ↦ False.elim (hb h))))) :=
  eq_of_veq <| Multiset.cons_swap a b s.val

/-- Split the added element of cons off a Pi type. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Insert/Variant4f172610f1f8859fbe96a064245977b9ffb98f71fbaf506a36c3fc356d1106a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Insert/Variant4f172610f1f8859fbe96a064245977b9ffb98f71fbaf506a36c3fc356d1106a7.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b41bdea808fe5397f0c9417612be33ade3a1dfe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
