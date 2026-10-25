# consRecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1f31a1c500699d097ad9546f34a36dda8cada67a64b939de2896eae8cb9135c",
  "kind": "def",
  "lexical_name": "consRecOn",
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
  "slug": "consrecon--3a4caa1d9726dbf842907e98",
  "source": {
    "blob": "03f7120ea7479e251be0d2edd29f8ca027b9d6cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a4caa1d9726dbf842907e98fc3d97cdec3246905b469498f09a41bb9adec8f5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1f31a1c500699d097ad9546f34a36dda8cada67a64b939de2896eae8cb9135c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def consRecOn {motive : NormalWord d → Sort*} (w : NormalWord d)
    (ofGroup : ∀ g, motive (ofGroup g))
    (cons : ∀ (g : G) (u : ℤˣ) (w : NormalWord d) (h1 : w.head ∈ d.set u)
      (h2 : ∀ u' ∈ Option.map Prod.fst w.toList.head?,
        w.head ∈ toSubgroup A B u → u = u'),
      motive w → motive (cons g u w h1 h2)) : motive w := by
  rcases w with ⟨⟨g, l, chain⟩, mem_set⟩
  induction l generalizing g with
  | nil => exact ofGroup _
  | cons a l ih =>
    exact cons g a.1
      { head := a.2
        toList := l
        mem_set := fun _ _ h => mem_set _ _ (List.mem_cons_of_mem _ h),
        chain := (List.isChain_cons.1 chain).2 }
      (mem_set a.1 a.2 List.mem_cons_self)
      (by simpa using (List.isChain_cons.1 chain).1)
      (ih _ _ _)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variantdb44068e106cad15d3480d8e75885c7004c13ea70182f145fd4dea6d1c6f9df5.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03f7120ea7479e251be0d2edd29f8ca027b9d6cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
