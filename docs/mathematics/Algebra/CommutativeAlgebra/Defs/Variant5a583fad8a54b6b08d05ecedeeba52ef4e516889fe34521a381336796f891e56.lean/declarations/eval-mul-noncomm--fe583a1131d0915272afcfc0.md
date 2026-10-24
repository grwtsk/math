# eval₂_mul_noncomm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7842b021-82be-6195-0feb-3d1ed1df4e69",
  "kind": "theorem",
  "lexical_name": "eval₂_mul_noncomm",
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
  "slug": "eval-mul-noncomm--fe583a1131d0915272afcfc0",
  "source": {
    "blob": "2f6faa7efe46628abc32b5e7da17767481aca328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 144,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant5a583fad8a54b6b08d05ecedeeba52ef4e516889fe34521a381336796f891e56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe583a1131d0915272afcfc037b27660a8373b36ade1f6393ea740f23b105867",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variant5a583fad8a54b6b08d05ecedeeba52ef4e516889fe34521a381336796f891e56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7842b021-82be-6195-0feb-3d1ed1df4e69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval₂_mul_noncomm (hf : ∀ k, Commute (f <| q.coeff k) x) :
    eval₂ f x (p * q) = eval₂ f x p * eval₂ f x q := by
  rcases p with ⟨p⟩; rcases q with ⟨q⟩
  simp only [coeff] at hf
  simp only [← ofFinsupp_mul, eval₂_ofFinsupp]
  exact liftNC_mul _ _ p q fun {k n} _hn => (hf k).pow_right n

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variant5a583fad8a54b6b08d05ecedeeba52ef4e516889fe34521a381336796f891e56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variant5a583fad8a54b6b08d05ecedeeba52ef4e516889fe34521a381336796f891e56.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f6faa7efe46628abc32b5e7da17767481aca328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
