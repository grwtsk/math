# Frame.copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28fc665ef00ab363d13de9700c547a9ecc7e2a29e35845a84783c82e067358b9",
  "kind": "def",
  "lexical_name": "Frame.copy",
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
  "slug": "frame-copy--4277468e5c2b2fa8ce1553f2",
  "source": {
    "blob": "c2864cf0a684d6e0dd526ea2b2995fea43176e28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant0c0e7147669b9b5acce1076648900a1bce57ca9740c8c1d11859685bab017f76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4277468e5c2b2fa8ce1553f245bb86b57e9609c704f381af05db18aee22af625",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant0c0e7147669b9b5acce1076648900a1bce57ca9740c8c1d11859685bab017f76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28fc665ef00ab363d13de9700c547a9ecc7e2a29e35845a84783c82e067358b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Frame.copy (c : Frame α) (le : α → α → Prop) (eq_le : le = (by infer_instance : LE α).le)
    (top : α) (eq_top : top = (by infer_instance : Top α).top)
    (bot : α) (eq_bot : bot = (by infer_instance : Bot α).bot)
    (sup : α → α → α) (eq_sup : sup = (by infer_instance : Max α).max)
    (inf : α → α → α) (eq_inf : inf = (by infer_instance : Min α).min)
    (himp : α → α → α) (eq_himp : himp = (by infer_instance : HImp α).himp)
    (compl : α → α) (eq_compl : compl = (by infer_instance : HasCompl α).compl)
    (sSup : Set α → α) (eq_sSup : sSup = (by infer_instance : SupSet α).sSup)
    (sInf : Set α → α) (eq_sInf : sInf = (by infer_instance : InfSet α).sInf) : Frame α where
  toCompleteLattice := CompleteLattice.copy (@Frame.toCompleteLattice α c)
    le eq_le top eq_top bot eq_bot sup eq_sup inf eq_inf sSup eq_sSup sInf eq_sInf
  __ := HeytingAlgebra.copy (@Frame.toHeytingAlgebra α c)
    le eq_le top eq_top bot eq_bot sup eq_sup inf eq_inf himp eq_himp compl eq_compl

/-- A function to create a provable equal copy of a coframe with possibly different definitional
equalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant0c0e7147669b9b5acce1076648900a1bce57ca9740c8c1d11859685bab017f76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Copy/Variant0c0e7147669b9b5acce1076648900a1bce57ca9740c8c1d11859685bab017f76.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2864cf0a684d6e0dd526ea2b2995fea43176e28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
