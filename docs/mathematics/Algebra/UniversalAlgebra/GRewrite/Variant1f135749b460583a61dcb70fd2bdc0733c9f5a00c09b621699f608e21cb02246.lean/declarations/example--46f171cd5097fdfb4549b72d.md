# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99e8b9b599adbf0af132e3e834f9238c4ea20a3572f7d02ed0077e077e00ac3e",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--46f171cd5097fdfb4549b72d",
  "source": {
    "blob": "dc889d6e3e2e8b246e881ba91a85d56c4bbef040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 180,
    "path": "GRWTSK/Algebra/UniversalAlgebra/GRewrite/Variant1f135749b460583a61dcb70fd2bdc0733c9f5a00c09b621699f608e21cb02246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46f171cd5097fdfb4549b72d7e56a3cd384e4b40db779e49f62935f043504f76",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/GRewrite/Variant1f135749b460583a61dcb70fd2bdc0733c9f5a00c09b621699f608e21cb02246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99e8b9b599adbf0af132e3e834f9238c4ea20a3572f7d02ed0077e077e00ac3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {a b c : ℤ} (h₁ : a ∣ b) (h₂ : b ∣ a ^ 2 * c) : a ∣ b ^ 2 * c := by
  grw [h₁] at *
  exact h₂

end dvd

section wildcard

/-! Rewriting at a wildcard `*`, i.e. `grw [h] at *`, will sometimes include a rewrite at `h` itself
and sometimes not, according to whether the generalized rewrite is valid or not; this is the case
approximately (not exactly) when the relation in the type of `h` is an equivalence relation.  See
examples below of it occurring for `≡ [ZMOD 5]` and not occurring for `<`.

Having `grw [h] at *` rewrite at `h` itself is a bit weird, but is consistent with the behaviour of
`rw` (for the equivalence relation `=`).
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/GRewrite/Variant1f135749b460583a61dcb70fd2bdc0733c9f5a00c09b621699f608e21cb02246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/GRewrite/Variant1f135749b460583a61dcb70fd2bdc0733c9f5a00c09b621699f608e21cb02246.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc889d6e3e2e8b246e881ba91a85d56c4bbef040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
