# Rel.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bb6f496-430d-f321-1915-1c64db1d2211",
  "kind": "theorem",
  "lexical_name": "Rel.trans",
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
  "slug": "rel-trans--14693f6bdcfdaab44614da88",
  "source": {
    "blob": "2920eb99908f320fbd338d5d5f2b39bf6faf4719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 600,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14693f6bdcfdaab44614da88ecf402fb15f63e0727f7f4ba77781d8f98cee0a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bb6f496-430d-f321-1915-1c64db1d2211`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rel.trans (r : α → α → Prop) [IsTrans α r] {s t u : Multiset α} (r1 : Rel r s t)
    (r2 : Rel r t u) : Rel r s u := by
  induction t using Multiset.induction_on generalizing s u with
  | empty => rw [rel_zero_right.mp r1, rel_zero_left.mp r2, rel_zero_left]
  | cons x t ih =>
    obtain ⟨a, as, ha1, ha2, rfl⟩ := rel_cons_right.mp r1
    obtain ⟨b, bs, hb1, hb2, rfl⟩ := rel_cons_left.mp r2
    exact Multiset.Rel.cons (_root_.trans ha1 hb1) (ih ha2 hb2)

end Rel

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2920eb99908f320fbd338d5d5f2b39bf6faf4719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
