# Complete source: GRWTSK.Algebra.PrimeNumberTheoremAnd.Variantcbe77c9a1821014e55353fcf8e209028a24136cbaf72b5a7c1964c8f693818fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8417290bb8ea6af1ad648e2a60de094c2d6d8793` · SHA-256 `5d91f078a38e6d759a773f4a9c20ee1191ed958d1118b3d7730bee136415b184`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Auxiliary.Variantf9465d45ae6244baf34ff95299b88661c71235e94483d5e6efd43aea05c108e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9465d45ae6244baf34ff95299b88661c71235e94483d5e6efd43aea05c108e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Auxiliary.Variantf9465d45ae6244baf34ff95299b88661c71235e94483d5e6efd43aea05c108e5","mathematical_subject":"Foundations.Unclassified","original_sha256":"f9465d45ae6244baf34ff95299b88661c71235e94483d5e6efd43aea05c108e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/PrimeNumberTheoremAnd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

import PrimeNumberTheoremAnd.Auxiliary
import PrimeNumberTheoremAnd.BorelCaratheodory
import PrimeNumberTheoremAnd.BrunTitchmarsh
import PrimeNumberTheoremAnd.Consequences
import PrimeNumberTheoremAnd.Defs
import PrimeNumberTheoremAnd.DerivativeBound
import PrimeNumberTheoremAnd.EulerMascheroniBounds
import PrimeNumberTheoremAnd.Fourier
import PrimeNumberTheoremAnd.GeneralMeromorphic
import PrimeNumberTheoremAnd.HadamardFactorization
import PrimeNumberTheoremAnd.HoffsteinLockhart
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_a2_bounds
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_app
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_app_tables
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_tables
import PrimeNumberTheoremAnd.IEANTN.Buthe
import PrimeNumberTheoremAnd.IEANTN.CH2.CH2
import PrimeNumberTheoremAnd.IEANTN.CH2.CH2_part1
import PrimeNumberTheoremAnd.IEANTN.Chebyshev
import PrimeNumberTheoremAnd.IEANTN.CostaPereira
import PrimeNumberTheoremAnd.IEANTN.Dusart
import PrimeNumberTheoremAnd.IEANTN.Erdos392
import PrimeNumberTheoremAnd.IEANTN.eSHP.eSHP
import PrimeNumberTheoremAnd.IEANTN.eSHP.eSHP_tables
import PrimeNumberTheoremAnd.IEANTN.FioriKadiriSwidinsky.FioriKadiriSwidinsky
import PrimeNumberTheoremAnd.IEANTN.FKS2
import PrimeNumberTheoremAnd.IEANTN.Goldbach
import PrimeNumberTheoremAnd.IEANTN.Kadiri
import PrimeNumberTheoremAnd.IEANTN.KLN
import PrimeNumberTheoremAnd.IEANTN.Lcm
import PrimeNumberTheoremAnd.IEANTN.Li2Bounds
import PrimeNumberTheoremAnd.IEANTN.Mertens
import PrimeNumberTheoremAnd.IEANTN.MobiusLemma
import PrimeNumberTheoremAnd.IEANTN.PrimaryDefinitions
import PrimeNumberTheoremAnd.IEANTN.PrimarySummary
import PrimeNumberTheoremAnd.IEANTN.PrimeInInterval
import PrimeNumberTheoremAnd.IEANTN.Ramanujan.Ramanujan
import PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime
import PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime_tables
import PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldZeta
import PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions
import PrimeNumberTheoremAnd.IEANTN.SecondarySummary
import PrimeNumberTheoremAnd.IEANTN.TMEEMT
import PrimeNumberTheoremAnd.IEANTN.ZetaAppendix
import PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions
import PrimeNumberTheoremAnd.IEANTN.ZetaSummary
import PrimeNumberTheoremAnd.IwaniecKowalskiCh1
import PrimeNumberTheoremAnd.Mathlib.Algebra.Notation.Support
import PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Asymptotics
import PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Uniformly
import PrimeNumberTheoremAnd.Mathlib.Analysis.SpecialFunctions.Log.Basic
import PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.AuxResults
import PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Basic
import PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Selberg
import PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.SelbergBounds
import PrimeNumberTheoremAnd.MediumPNT
import PrimeNumberTheoremAnd.MellinCalculus
import PrimeNumberTheoremAnd.PerronFormula
import PrimeNumberTheoremAnd.Rectangle
import PrimeNumberTheoremAnd.ResidueCalcOnRectangles
import PrimeNumberTheoremAnd.SmoothExistence
import PrimeNumberTheoremAnd.Sobolev
import PrimeNumberTheoremAnd.StrongPNT
import PrimeNumberTheoremAnd.Tactic.AdditiveCombination
import PrimeNumberTheoremAnd.Wiener
import PrimeNumberTheoremAnd.ZetaBounds
import PrimeNumberTheoremAnd.ZetaConj

namespace GRWTSK.Algebra.Auxiliary.Variantf9465d45ae6244baf34ff95299b88661c71235e94483d5e6efd43aea05c108e5

```
