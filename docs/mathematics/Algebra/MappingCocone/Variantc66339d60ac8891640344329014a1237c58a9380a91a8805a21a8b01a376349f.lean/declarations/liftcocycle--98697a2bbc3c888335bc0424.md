# liftCocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a94ec421b562bcc7c0ad4de0fbb4839e410bbbc044162bc451628cdd696e0534",
  "kind": "def",
  "lexical_name": "liftCocycle",
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
  "slug": "liftcocycle--98697a2bbc3c888335bc0424",
  "source": {
    "blob": "c849eea29e0a28ffa49d27a9c9b02827901e1931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 265,
    "path": "GRWTSK/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98697a2bbc3c888335bc04244014ee00f086ce0f0794e1984127ede0cf32be4a",
  "verification": {
    "reference": "docs/verification/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a94ec421b562bcc7c0ad4de0fbb4839e410bbbc044162bc451628cdd696e0534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftCocycle {M : CochainComplex C ℤ} {n m : ℤ}
    (α : Cocycle M K n) (β : Cochain M L m) (h : m + 1 = n)
    (hαβ : δ m n β + α.1.comp (Cochain.ofHom φ) (add_zero n) = 0) :
    Cocycle M (mappingCocone φ) n :=
  ⟨liftCochain φ α β h,
    by simp [Cocycle.mem_iff _ _ rfl, δ_liftCochain _ _ _ _ _ rfl, hαβ]⟩

section

variable {M : CochainComplex C ℤ} (α : M ⟶ K) (β : Cochain M L (-1))
  (hαβ : δ (-1) 0 β + Cochain.ofHom (α ≫ φ) = 0)

/-- Constructor for morphisms to `mappingCocone`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MappingCocone/Variantc66339d60ac8891640344329014a1237c58a9380a91a8805a21a8b01a376349f.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c849eea29e0a28ffa49d27a9c9b02827901e1931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
