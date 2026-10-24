# span_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5316192-ff20-8eca-3a7a-1f1ff0dfe0bc",
  "kind": "lemma",
  "lexical_name": "span_neg",
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
  "slug": "span-neg--c1e63b5d94c84806a2a1a57a",
  "source": {
    "blob": "4c31632f323f38a612b7802ddf8fbdb5145c8cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 213,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1e63b5d94c84806a2a1a57ab90fcb68f19292448db9f9ea498cc217585aa985",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5316192-ff20-8eca-3a7a-1f1ff0dfe0bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_neg {R M : Type*} [Ring R] [AddCommGroup M] [Module R M]
    {v : ι → M} (hli : LinearIndependent R v)
    (h : span R (range v) = span R (range (-v)) := by simp [← neg_range']) :
    Basis.span hli.neg = ((Basis.span hli).map <| (LinearEquiv.neg _).trans (.ofEq _ _ h)) := by
  ext; simp

end Span

set_option backward.isDefEq.respectTransparency false in
/-- Any basis is a maximal linear independent set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c31632f323f38a612b7802ddf8fbdb5145c8cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
