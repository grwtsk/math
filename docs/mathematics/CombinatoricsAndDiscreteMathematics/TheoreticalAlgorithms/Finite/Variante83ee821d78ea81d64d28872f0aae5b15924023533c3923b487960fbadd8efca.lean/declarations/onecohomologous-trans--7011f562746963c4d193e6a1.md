# OneCohomologous.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2df1eae-ad29-fca6-502b-fa6412267ef7",
  "kind": "theorem",
  "lexical_name": "OneCohomologous.trans",
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
  "slug": "onecohomologous-trans--7011f562746963c4d193e6a1",
  "source": {
    "blob": "837bfcc776ca0cfa217379c08c0ef525bb35dddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 425,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante83ee821d78ea81d64d28872f0aae5b15924023533c3923b487960fbadd8efca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7011f562746963c4d193e6a1ab34b7fe9f325b15ce3049aee36c3d5c510b5b0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante83ee821d78ea81d64d28872f0aae5b15924023533c3923b487960fbadd8efca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2df1eae-ad29-fca6-502b-fa6412267ef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OneCohomologous.trans
    {G : FiniteGroupData.{u}}
    {A : FiniteAddCommGroup.{v}}
    {ρ : AdditiveAction G A}
    {x y z : Z1 G A ρ}
    (hxy : OneCohomologous ρ x y)
    (hyz : OneCohomologous ρ y z) :
    OneCohomologous ρ x z := by
  rcases hxy with ⟨a, ha⟩
  rcases hyz with ⟨b, hb⟩
  refine ⟨A.add a b, ?_⟩
  intro g
  calc
    z.cochain g =
        A.add (y.cochain g) (coboundaryOf ρ b g) := hb g
    _ =
        A.add
          (A.add (x.cochain g) (coboundaryOf ρ a g))
          (coboundaryOf ρ b g) := by
          rw [ha g]
    _ =
        A.add (x.cochain g)
          (A.add (coboundaryOf ρ a g)
            (coboundaryOf ρ b g)) := A.add_assoc
          (x.cochain g)
          (coboundaryOf ρ a g)
          (coboundaryOf ρ b g)
    _ =
        A.add (x.cochain g) (coboundaryOf ρ (A.add a b) g) := by
          unfold coboundaryOf
          rw [ρ.coboundary_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante83ee821d78ea81d64d28872f0aae5b15924023533c3923b487960fbadd8efca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Finite/Variante83ee821d78ea81d64d28872f0aae5b15924023533c3923b487960fbadd8efca.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `837bfcc776ca0cfa217379c08c0ef525bb35dddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
