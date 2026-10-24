# smul_set_univ_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cb53766-1f86-d1d2-b3fe-a491a78d7eb2",
  "kind": "theorem",
  "lexical_name": "smul_set_univ_pi",
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
  "slug": "smul-set-univ-pi--cfd6c14847c119393dead2be",
  "source": {
    "blob": "38cfeacc866d25cca6cea447fe13913a6b36b55c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 212,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfd6c14847c119393dead2be3591d76e4e860ab8133dda9506053b848f9a1092",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cb53766-1f86-d1d2-b3fe-a491a78d7eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_set_univ_pi (c : M) (s : ∀ i, Set (π i)) : c • univ.pi s = univ.pi (c • s) :=
  piMap_image_univ_pi _ s

end Pi

variable {a : α} {b : β}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Scalar/Variantc59668359f55e48d685f18acde01536c9d9049204a914af928c302aba90adbbb.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38cfeacc866d25cca6cea447fe13913a6b36b55c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
