# noncommFoldr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b37e7a85967bcfb11d99bb8972ad88b50317497a5a5a450a198afb9c7154d5a9",
  "kind": "def",
  "lexical_name": "noncommFoldr",
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
  "slug": "noncommfoldr--2703c2d88fa1a9f117c645f4",
  "source": {
    "blob": "10bd97808d8f974cf5dea5f9b4db4007d717ba3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2703c2d88fa1a9f117c645f4fa7e50a67c154a471ae66b1f5aa2eeca8cb33851",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b37e7a85967bcfb11d99bb8972ad88b50317497a5a5a450a198afb9c7154d5a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def noncommFoldr (s : Multiset α)
    (comm : { x | x ∈ s }.Pairwise fun x y => ∀ b, f x (f y b) = f y (f x b)) (b : β) : β :=
  s.attach.foldr (f ∘ Subtype.val)
    (fun ⟨_, hx⟩ ⟨_, hy⟩ =>
      haveI : IsRefl α fun x y => ∀ b, f x (f y b) = f y (f x b) := ⟨fun _ _ => rfl⟩
      comm.of_refl hx hy)
    b
#align multiset.noncomm_foldr Multiset.noncommFoldr

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant551e74acb948c4eedb6863d23c7d5349468dbd924b1a3da54826ac77617065a6.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10bd97808d8f974cf5dea5f9b4db4007d717ba3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
