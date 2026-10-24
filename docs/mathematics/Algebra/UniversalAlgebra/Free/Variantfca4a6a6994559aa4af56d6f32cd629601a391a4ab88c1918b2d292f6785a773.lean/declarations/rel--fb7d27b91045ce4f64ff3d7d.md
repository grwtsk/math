# Rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89f8e219db926e691d23fbb98fcdb7a42d3df9f384e8d3af28aba9323c7a7fbf",
  "kind": "inductive",
  "lexical_name": "Rel",
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
  "slug": "rel--fb7d27b91045ce4f64ff3d7d",
  "source": {
    "blob": "62d10082754200dbb9ac6632e65bb6b87b0b7a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb7d27b91045ce4f64ff3d7d10b00fa0a977ba15dc3727a2a77c20cc169dac58",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89f8e219db926e691d23fbb98fcdb7a42d3df9f384e8d3af28aba9323c7a7fbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Rel : lib R X → lib R X → Prop
  | lie_self (a : lib R X) : Rel (a * a) 0
  | leibniz_lie (a b c : lib R X) : Rel (a * (b * c)) (a * b * c + b * (a * c))
  | smul (t : R) {a b : lib R X} : Rel a b → Rel (t • a) (t • b)
  | add_right {a b : lib R X} (c : lib R X) : Rel a b → Rel (a + c) (b + c)
  | mul_left (a : lib R X) {b c : lib R X} : Rel b c → Rel (a * b) (a * c)
  | mul_right {a b : lib R X} (c : lib R X) : Rel a b → Rel (a * c) (b * c)
#align free_lie_algebra.rel FreeLieAlgebra.Rel

variable {R X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Free/Variantfca4a6a6994559aa4af56d6f32cd629601a391a4ab88c1918b2d292f6785a773.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62d10082754200dbb9ac6632e65bb6b87b0b7a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
