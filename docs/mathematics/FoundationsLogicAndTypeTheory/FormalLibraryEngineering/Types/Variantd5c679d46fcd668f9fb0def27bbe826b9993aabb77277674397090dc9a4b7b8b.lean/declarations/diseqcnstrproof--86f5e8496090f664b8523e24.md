# DiseqCnstrProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c5a1ae2bdc9cb52f3a69ab58aeb0244da251d8980c1d7da5bdac01a66c81790",
  "kind": "inductive",
  "lexical_name": "DiseqCnstrProof",
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
  "slug": "diseqcnstrproof--86f5e8496090f664b8523e24",
  "source": {
    "blob": "7a0011c4c798d221a6d453c78a27e93640f0149c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86f5e8496090f664b8523e24e1c989755cd1a9768eda617cfd78c761df5acd79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c5a1ae2bdc9cb52f3a69ab58aeb0244da251d8980c1d7da5bdac01a66c81790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive DiseqCnstrProof where
  | core (a b : Expr) (ea eb : AC.Expr)
  | erase_dup (c : DiseqCnstr)
  | erase0 (c : DiseqCnstr)
  | simp_exact (lhs : Bool) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | simp_ac (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | simp_suffix (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | simp_prefix (lhs : Bool) (s : AC.Seq) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
  | simp_middle (lhs : Bool) (s₁ s₂ : AC.Seq) (c₁ : EqCnstr) (c₂ : DiseqCnstr)
end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantd5c679d46fcd668f9fb0def27bbe826b9993aabb77277674397090dc9a4b7b8b.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0011c4c798d221a6d453c78a27e93640f0149c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
