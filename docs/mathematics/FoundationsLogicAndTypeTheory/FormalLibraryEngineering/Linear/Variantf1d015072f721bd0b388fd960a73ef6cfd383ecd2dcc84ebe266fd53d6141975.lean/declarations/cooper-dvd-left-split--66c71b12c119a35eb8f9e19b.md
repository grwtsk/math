# cooper_dvd_left_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:192ed6b06646cd388afb0da22eaf98e4b2d8a47b488f453ae54b999f27671933",
  "kind": "def",
  "lexical_name": "cooper_dvd_left_split",
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
  "slug": "cooper-dvd-left-split--66c71b12c119a35eb8f9e19b",
  "source": {
    "blob": "c43335f1fbd938bca5e0516fa91279a56144dc3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1437,
    "line": 1425,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66c71b12c119a35eb8f9e19b78aca156af60ad5dbe6c40b0599019de1cb30daa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:192ed6b06646cd388afb0da22eaf98e4b2d8a47b488f453ae54b999f27671933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1425–1437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cooper_dvd_left_split (ctx : Context) (p₁ p₂ p₃ : Poly) (d : Int) (k : Nat) : Prop :=
  let p  := p₁.tail
  let q  := p₂.tail
  let s  := p₃.tail
  let a  := p₁.leadCoeff
  let b  := p₂.leadCoeff
  let c  := p₃.leadCoeff
  let p₁ := p.mul b |>.combine (q.mul (-a))
  let p₂ := p.mul c |>.combine (s.mul (-a))
  (p₁.addConst (b*k)).denote' ctx ≤ 0
  ∧ a ∣ (p.addConst k).denote' ctx
  ∧ a*d ∣ (p₂.addConst (c*k)).denote' ctx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variantf1d015072f721bd0b388fd960a73ef6cfd383ecd2dcc84ebe266fd53d6141975.lean#L1425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43335f1fbd938bca5e0516fa91279a56144dc3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
