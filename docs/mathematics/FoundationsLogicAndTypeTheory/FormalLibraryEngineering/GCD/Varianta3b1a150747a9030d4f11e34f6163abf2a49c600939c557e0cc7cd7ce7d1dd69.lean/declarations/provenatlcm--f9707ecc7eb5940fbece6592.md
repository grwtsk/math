# proveNatLCM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:010feb81d4ba5d32c44cbda0da66f40fceec1c755f9ef4e4778a560a93268774",
  "kind": "def",
  "lexical_name": "proveNatLCM",
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
  "slug": "provenatlcm--f9707ecc7eb5940fbece6592",
  "source": {
    "blob": "004b838781ed0b2b53a89aca20fb1795a291f922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 150,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9707ecc7eb5940fbece659221dc0b8df745e768b63d9596c14016ca6a343b25",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:010feb81d4ba5d32c44cbda0da66f40fceec1c755f9ef4e4778a560a93268774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveNatLCM (ex ey : Q(ℕ)) : (ed : Q(ℕ)) × Q(Nat.lcm $ex $ey = $ed) :=
  match ex.natLit!, ey.natLit! with
  | 0, _ =>
    show (ed : Q(ℕ)) × Q(Nat.lcm 0 $ey = $ed) from ⟨mkRawNatLit 0, q(Nat.lcm_zero_left $ey)⟩
  | _, 0 =>
    show (ed : Q(ℕ)) × Q(Nat.lcm $ex 0 = $ed) from ⟨mkRawNatLit 0, q(Nat.lcm_zero_right $ex)⟩
  | 1, _ => show (ed : Q(ℕ)) × Q(Nat.lcm 1 $ey = $ed) from ⟨ey, q(Nat.lcm_one_left $ey)⟩
  | _, 1 => show (ed : Q(ℕ)) × Q(Nat.lcm $ex 1 = $ed) from ⟨ex, q(Nat.lcm_one_right $ex)⟩
  | x, y =>
    let ⟨ed, pd⟩ := proveNatGCD ex ey
    have p0 : Q(Nat.beq $ed 0 = false) := (q(Eq.refl false) : Expr)
    have em : Q(ℕ) := mkRawNatLit (x * y / ed.natLit!)
    have pm : Q($ex * $ey = $ed * $em) := (q(Eq.refl ($ex * $ey)) : Expr)
    ⟨em, q(nat_lcm_helper $ex $ey $ed $em $pd $p0 $pm)⟩

/-- Evaluates the `Nat.lcm` function. -/
@[norm_num Nat.lcm _ _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GCD/Varianta3b1a150747a9030d4f11e34f6163abf2a49c600939c557e0cc7cd7ce7d1dd69.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `004b838781ed0b2b53a89aca20fb1795a291f922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
